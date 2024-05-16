---

title: '首个中文原生DiT架构！腾讯混元文生图大模型全面开源，免费商用'
date: 2024-05-17
author: ByteAILab

---

中文 AI 社区迎来了一个好消息：与 Sora 同架构的开源文生图大模型来了！

5 月 14 日，腾讯宣布旗下混元文生图大模型全面升级并全面开源，目前已在 Hugging Face 平台及 GitHub 上发布，包含模型权重、推理代码、模型算法等完整模型，可供企业与个人开发者免费商用。

官网地址：https://dit.hunyuan.tencent.com/
GitHub 项目地址：https://github.com/Tencent/HunyuanDiT
Hugging Face 模型地址：https://huggingface.co/Tencent-Hunyuan/HunyuanDiT
技术报告地址：https://tencent.github.io/HunyuanDiT/asset/Hunyuan_DiT_Tech_Report_05140553.pdf

据了解，这是业内首个中文原生的 DiT 架构文生图开源模型，支持中英文双语输入及理解，参数量 15 亿。

---


升级后的混元文生图大模型采用了与 Sora 一致的 DiT 架构，即全新的 Hunyuan-DiT 架构，不仅可以支持文生图，也可以作为视频等多模态视觉生成的基础。

为了全面比较 Hunyuan-DiT 与其他文生图模型的生成能力，腾讯混元团队构建 4 个维度的测试集，邀请专业评估人员进行评估，包括文本图像一致性、排除 AI 伪影、主题清晰度、审美。

从下表结果可以看到，采用 Hunyuan-DiT 架构的腾讯混元文生图模型效果远超开源的 Stable Diffusion 模型，是目前效果最好的开源文生图模型，整体能力属于国际领先水平。

更多内容请查看原文。图片链接如下：

- [图片1](https://image.jiqizhixin.com/uploads/editor/9ca95706-0c08-4ebe-a4fc-ef1a188f0444/640.png)
- [图片2](https://image.jiqizhixin.com/uploads/editor/74accce8-0e3a-4299-90ba-df1ac0814d71/640.png)
- [图片3](https://image.jiqizhixin.com/uploads/editor/8f0be696-c48b-4fc8-9bdc-6644fafc2878/640.png)
- [图片4](https://image.jiqizhixin.com/uploads/editor/2604c7dd-0d14-435b-b38c-cccd1f043c25/640.png)
- [图片5](https://image.jiqizhixin.com/uploads/editor/93be34fe-e439-48cc-a5f0-d846c7cca90f/640.png)
- [图片6](https://image.jiqizhixin.com/uploads/editor/ed0b345d-e1f1-4be9-bd92-367238f1f314/640.png)
- [图片7](https://image.jiqizhixin.com/uploads/editor/5bbae855-7744-4099-89b7-a9934e611c37/640.png)
- [图片8](https://image.jiqizhixin.com/uploads/editor/d0069db4-f370-4e0e-a834-db674d23a3fd/640.png)
- [图片9](https://image.jiqizhixin.com/uploads/editor/8acf90ed-c1c3-4e3e-ac9b-34d3baed2306/640.png)
- [图片10](https://image.jiqizhixin.com/uploads/editor/c61deb7c-e519-43a5-9abb-2bd19f34e829/640.gif)
- [图片11](https://image.jiqizhixin.com/uploads/editor/4d043530-dba4-4d56-8d5e-740cb9588791/640.png)
- [图片12](https://image.jiqizhixin.com/uploads/editor/5f538617-b1ab-43e4-858b-ed5eb69ce025/640.png)

此外，混元文生图大模型在算法层面创新实现了多轮生图和对话能力，可实现在一张初始生成图片的基础上，通过自然语言描述进行调整，达更满意的效果。

更多多轮对话生成示例如下图所示。

中文原生也是腾讯混元文生图大模型的一大亮点。此前，像 Stable Diffusion 等主流开源模型核心数据集以英文为主，对中国的文化习俗理解不够。

作为首个中文原生的 DiT 模型，混元文生图具备了中英文双语理解及生成能力，在古诗词、俚语、传统建筑、中华美食等中国元素的生成上表现出色。我们可以看以下一些生成示例。

[图片13](https://image.jiqizhixin.com/uploads/editor/5f538617-b1ab-43e4-858b-ed5eb69ce025/640.png)

评测结果显示，新一代腾讯混元文生图大模型视觉生成整体效果，相比前代提升超过了 20%，在语义理解、画面质感与真实性方面全面提升，而且在多轮对话、多主体、中国元素、真实人像生成等场景下效果提升显著。

这一次，腾讯混元选择全面开源文生图模型。腾讯混元文生图能力，已被用于多项业务及场景中。今年初，腾讯广告基于腾讯混元大模型，发布了一站式 AI 广告创意平台，提供多场景创意工具，有效提高了广告生产及投放效率。

腾讯文生图负责人芦清林表示：「腾讯混元文生图的研发思路就是实用，坚持实践中来，实践中去。此次把最新一代模型完整开源出来，是希望与行业共享腾讯在文生图领域的实践经验和研究成果，丰富中文文生图开源生态，共建下一代视觉生成开源生态，推动大模型行业发展。」

基于腾讯开源的文生图模型，无需从头训练，可直接用于推理，并可基于混元文生图打造专属的 AI 绘画应用及服务，节约人力及算力。透明公开的算法，也让模型的安全性和可靠性得到保障。

此外，基于开放、前沿的混元文生图基础模型，也有利于丰富以中文为主的文生图开源生态，推动中文文生图技术研发和应用。
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。