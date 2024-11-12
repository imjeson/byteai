---
title: '扩散模型失宠？端侧非自回归图像生成基础模型Meissonic登场，超越SDXL！'
date: 2024-11-13
author: ByteAILab

---

[图片来源：由GPTNB生成](http://www.jesonc.com/upload/8FD7B96F5E34993C64020C0DB54F4C00/1731393102645/FgtG4qQK_ezXDZa1HBa0a7hYzV7S.png)

最近，YouTube和Reddit上出现了一个引起广泛讨论的图像生成模型，来自日本、韩国、美国、印度、中东和英国的网友们纷纷参与讨论。

![Youtube热烈讨论](http://www.jesonc.com/FpH1GvJDkSrxP0AlqiIhlC8ttaMx)

那么，这到底是怎么回事呢？让我们一起来看看吧。

---


近年来，大语言模型在自然语言处理领域取得了巨大的突破，以LLaMA和Qwen等为代表的模型展现了强大的语言理解和生成能力。

但是，图像生成技术的突破主要得益于扩散模型，如Stable Diffusion XL在图像质量、细节和概念一致性方面设立了事实标准。

然而，这些扩散模型与自回归语言模型的工作原理和架构显著不同，导致在视觉和语言任务上实现统一生成方法面临挑战。这种差异不仅使这些模态的整合变得复杂，还凸显了需要创新的方法来弥合它们之间的差距。

自回归文本到图像模型（如LlamaGen）通过预测下一个token生成图像，但由于生成的图像token数量庞大，自回归模型在效率和分辨率上也面临瓶颈，难以应用到实际场景。于是，一些Masked Image Modeling（MIM）技术，例如MaskGIT和MUSE被提出。这些方法展现了高效图像生成的潜力。

尽管MIM方法具有一定的前景，它们仍面临两个关键限制：

1. 分辨率限制
   当前的MIM方法只能生成最大分辨率为512×512像素的图像。这一限制阻碍了它们的广泛应用和进一步发展，尤其是在文本生成图像的社区中，1024×1024分辨率逐渐成为标准。

2. 性能差距
   现有的MIM技术尚未达到领先扩散模型如SDXL所表现的性能水平，特别是在图像质量、复杂细节和概念表达等关键领域表现不佳，而这些对实际应用至关重要。

这些挑战需要探索新的创新方法，Meissonic的目标是使MIM能够高效生成高分辨率图像（如1024×1024），同时缩小与顶级扩散模型的差距，并确保其计算效率适合消费级硬件。

![Meissonic模型](http://www.jesonc.com/FscITerCdWqidtawqIhOEzzVS36o)

论文链接: [https://arxiv.org/abs/2410.08261](https://arxiv.org/abs/2410.08261)
GitHub Code: [https://github.com/viiika/Meissonic](https://github.com/viiika/Meissonic)
Huggingface Model: [https://huggingface.co/MeissonFlow/Meissonic](https://huggingface.co/MeissonFlow/Meissonic)

通过架构创新、先进的位置编码策略和优化的采样方法，Meissonic不仅在生成质量和效率上与领先的扩散模型（如SDXL）相媲美，甚至在某些场景中超越了它们。

此外，Meissonic利用高质量的数据集，并通过基于人类偏好评分的微观条件进行训练，同时引入特征压缩层，显著提升了图像的保真度与分辨率。

以下是Meissonic在方法上的几项重要技术改进：

1. **增强型Transformer架构**
   Meissonic结合了多模态与单模态的Transformer层，旨在捕捉语言与视觉之间的互动信息。从未池化的文本表示中提取有用信号，构建两者之间的桥梁；单模态Transformer层则进一步细化视觉表示，提升生成图像的质量与稳定性。研究表明，这种结构按1:2比例能够实现最佳性能。

2. **先进的位置编码与动态采样条件**
   为保持高分辨率图像中的细节，Meissonic引入了旋转位置编码（RoPE），为queries和keys编码位置信息。RoPE有效解决了随着token数量增加，传统位置编码方法导致的上下文关联丢失问题，尤其在生成512×512及更高分辨率图像时。
   
   此外，Meissonic通过引入掩码...

---
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。