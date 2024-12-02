```
---

title: '给视频模型安上快慢两只眼睛，苹果免训练新方法秒了一切SOTA'
date: 2024-08-13
author: ByteAILab

---

自从 Sora 发布以来，AI 视频生成领域变得更加「热闹」了起来。过去几个月，我们见证了即梦、Runway Gen-3、Luma AI、快手可灵轮番炸场。

---


和以往一眼就能识破是 AI 生成的模型不太一样，这批视频大模型可能是我们所见过的「最好的一届」。

然而，视频大语言模型（LLM）惊艳表现的背后离不开庞大且经过精细标注的视频数据集，这需要花费相当高的成本。近期研究领域也涌现了一批无需额外训练的创新方法：采用训练好的图像大语言模型，直接用于视频任务的处理，这样就绕开了「昂贵」的训练过程。

此外，现有大多视频 LLM 存在两个主要缺点：（1）它们只能处理有限帧数的视频输入，这使得模型难以捕捉视频中细微的空间和时间内容；（2）它们缺少时间建模设计，而是简单地将视频特征输入到 LLM 中，完全依赖于 LLM 对运动的建模能力。

针对以上问题，苹果研究人员提出了 SlowFast-LLaVA（简称 SF-LLaVA）。这一模型基于字节团队开发的 LLaVA-NeXT 架构，无需额外微调，开箱即用。研究团队受在动作识别领域大获成功的双流网络的启发，为视频 LLM 设计了一套新颖的 SlowFast 输入机制。

简单来说，SF-LLaVA 将通过两种不同的观察速度（Slow 和 Fast）来理解视频中的细节和运动。

慢速路径：低帧率提取特征，同时尽可能多地保留空间细节（例如每 8 帧保留 24×24 个 token）
快速路径：高帧率运行，但用较大的空间池化步长降低视频的分辨率，以模拟更大的时间上下文，更专注于理解动作的连贯性

这相当于模型拥有两只「眼睛」：一只慢慢看，注意看细节；另一只快速看，注意看动作。这样就解决了大多现有的视频 LLM 的痛点，既能捕捉到详细的空间语义，又能捕捉到更长的时间上下文。

![图片](https://image.jiqizhixin.com/uploads/editor/65352bb1-4d24-4b6c-a627-0328b1209ad2/640.png)

论文链接：https://arxiv.org/pdf/2407.15841

实验结果显示，SF-LLaVA 在所有基准测试中均以显著的优势超越了现有免训练方法。与精心微调的 SFT 模型相比，SF-LLaVA 能达到相同性能，甚至更好。

![图片](https://image.jiqizhixin.com/uploads/editor/bb587fdd-bc59-4a78-afe1-41292046ace9/640.png)

## 模型架构

如下图所示，SF-LLaVA 遵循标准的免训练视频 LLM 流程。它以视频 V 和问题 Q 作为输入，输出对应的答案 A。

![图片](https://image.jiqizhixin.com/uploads/editor/62f507ba-3d29-4e88-bb8d-e7ae6360a7a3/640.png)

对于输入，要从每个视频任意大小和长度中均匀采样 N 帧，I = {I_1, I_2, ..., I_N}，不需要对选取的视频帧进行特别的组合或排列。以帧为单位视独立提取频特征为 F_v ∈ R^N×H×W，其中 H 和 W 分别是帧特征的高度和宽度。

下一步需要在慢速和快速两个路径中进一步处理 F_v，并将它们结合起来作为有效的视频表示。慢速路径从 F_v 中均匀采样![图片](https://image.jiqizhixin.com/uploads/editor/7cd1189d-6d04-4c30-91ef-f762271ee837/640.png)的帧特征，其中![图片](https://image.jiqizhixin.com/uploads/editor/3ba34549-281e-4d56-9c56-24c5b214d8a6/640.png)。

此前有研究发现，在空间维度上适当池化可以提高视频生成的效率和鲁棒性。因此，研究团队在 F_v 上应用步长为 σ_h×σ_w 的池化过程，得到最终特征：![图片](https://image.jiqizhixin.com/uploads/editor/031f440d-7016-45c3-b91a-8518d5f1a2bb/640.png)，其中![图片](https://image.jiqizhixin.com/uploads/editor/b60a0bf6-ed40-4689-a0cf-3857bdc563d0/640.png)、![图片](https://image.jiqizhixin.com/uploads/editor/fb7372d0-6043-477e-84e9-1ebab9091b82/640.png)。慢速路径的整个过程如公式 2 所示。

![图片](https://image.jiqizhixin.com/uploads/editor/7cd1189d-6d04-4c30-91ef-f762271ee837/640.png)

快速路径保留 F_v 中的所有帧特征，以尽可能多地捕捉视频的长程时间上下文。具体来说，研究团队使用空间池化步长![图片](https://image.jiqizhixin.com/uploads/editor/a2307831-48bc-4f54-9e38-402138726c0f/640.png)对 F_v 进行激进的下采样，得到最终特征![图片](https://image.jiqizhixin.com/uploads/editor/43ae7bd6-5e23-4d2b-aa2c-79569efc6800/640.png)。研究团队设置![图片](https://image.jiqizhixin.com/uploads/editor/5f54158e-e907-4e7e-b545-a9c8bcf194db/640.png)、![图片](https://image.jiqizhixin.com/uploads/editor/85043d6b-5e43-475d-b65e-6202aece14ca/640.png)，使得快速路径能专注于模拟时间上下文和运动线索。慢速路径的整个过程如公式 3 所示。

![图片](https://image.jiqizhixin.com/uploads/editor/031f440d-7016-45c3-b91a-8518d5f1a2bb/640.png)

...

更多细节，请参考原论文。

---
```
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。