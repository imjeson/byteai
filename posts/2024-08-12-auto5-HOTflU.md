---

title: '黑匣子被打开了！能玩的Transformer可视化解释工具，本地运行GPT-2、还可实时推理'
date: 2024-08-13
author: ByteAILab

---

都 2024 年，还有人不了解 Transformer 工作原理吗？快来试一试这个交互式工具吧。

2017 年，谷歌在论文《Attention is all you need》中提出了 Transformer，成为了深度学习领域的重大突破。

---
该论文的引用数已经将近 13 万，后来的 GPT 家族所有模型也都是基于 Transformer 架构，可见其影响之广。

作为一种神经网络架构，Transformer 在从文本到视觉的多样任务中广受欢迎，尤其是在当前火热的 AI 聊天机器人领域。

![图片](https://image.jiqizhixin.com/uploads/editor/2f92ae2e-f30e-4a5a-a554-ab481f5bb61f/640.png)

不过，对于很多非专业人士来说，Transformer 的内部工作原理仍然不透明，阻碍了他们的理解和参与进来。因此，揭开这一架构的神秘面纱尤其必要。但很多博客、视频教程和 3D 可视化往往强调数学的复杂性和模型实现，可能会让初学者无所适从。同时为 AI 从业者设计的可视化工作侧重于神经元和层级可解释性，对于非专业人士来说具有挑战性。

因此，佐治亚理工学院和 IBM 研究院的几位研究者开发了**一款基于 web 的开源交互式可视化工具「Transformer Explainer」，帮助非专业人士了解 Transformer 的高级模型结构和低级数学运算**。如下图 1 所示。

![图片](https://image.jiqizhixin.com/uploads/editor/58ea01be-c258-4aba-ae44-f358ad1af734/640.png)

Transformer Explainer 通过文本生成来解释 Transformer 内部工作原理，采用了**桑基图可视化设计**，灵感来自最近将 Transformer 视为动态系统的工作，强调了输入数据如何流经模型组件。从结果来看，桑基图有效地说明了信息如何在模型中传递，并展示了输入如何通过 Transformer 操作进行处理和变换。

在内容上，Transformer Explainer 紧密集成了对 Transformer 结构进行总结的模型概述，并允许用户在多个抽象层级之间平滑过渡，以可视化低级数学运算和高级模型结构之间的相互作用，帮助他们全面理解 Transformer 中的复杂概念。

在功能上，Transformer Explainer 在提供基于 web 的实现之外，还具有实时推理的功能。与现有很多需要自定义软件安装或缺乏推理功能的工具不同，它集成了一个实时 GPT-2 模型，使用现代前端框架在浏览器本地运行。用户可以交互式地试验自己的输入文本，并实时观察 Transformer 内部组件和参数如何协同工作以预测下一个 token。

在意义上，Transformer Explainer 拓展了对现代生成式 AI 技术的访问，且不需要高级计算资源、安装或编程技能。而之所以选择 GPT-2，是因为该模型知名度高、推理速度快，并且与 GPT-3、GPT-4 等更高级的模型在架构上相似。

[论文地址](https://arxiv.org/pdf/2408.04619)
[GitHub 地址](http://poloclub.github.io/transformer-explainer/)
[在线体验地址](https://t.co/jyBlJTMa7m)

![图片](https://image.jiqizhixin.com/uploads/editor/6968e9d9-dd07-4d8c-ab1e-bf891039a255/640.png)

论文来源：[点击跳转链接](https://mp.weixin.qq.com/s/vLyIrRyoWYjhMN4gTRgA6g)

![图片](https://image.jiqizhixin.com/uploads/editor/b960905e-ee7b-4b34-bd77-48527678fcb6/640.png)

![图片](https://image.jiqizhixin.com/uploads/editor/e505a513-2235-4d46-b714-36122c9cabb2/640.png)

![图片](https://image.jiqizhixin.com/uploads/editor/42812091-8f8b-49ed-8553-ddf76d777113/640.png)

还有人做出了中译版。

展示地址：[点击跳转链接](http://llm-viz-cn.iiiai.com/llm)

...

Transformer Explainer 系统设计与实现

...

未来工作

研究者们正在增强工具的交互式解释来改善学习体验。同时，他们还在通过 WebGPU 提升推理速度，并通过压缩技术来减小模型的大小。他们还计划进行用户研究，来评估 Transformer Explainer 的效能和可用性，观察 AI 新手、学生、教育者和从业者如何使用该工具，并收集他们希望支持的额外功能的反馈意见。

还在等什么，你也上手体验一下，打破对 Transformer 的「魔法」幻想，真正了解这背后的原理吧。

---
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。