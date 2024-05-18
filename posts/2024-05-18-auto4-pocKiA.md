---
title: '900个开源AI工具背后，我看到的趋势'
date: 2024-05-19
author: ByteAILab

---

文章来源: OneFlow
作者 | Chip Huyen
OneFlow编译
翻译｜杨婷、宛子琳

![Image](https://appserversrc.8btc.cn/FpH9GPFeJ-Gx30T0KbV3g5T-89ns)

四年前，我对开源机器学习生态系统进行了分析。自那时起，情况就发生了变化，所以这次我打算重新讨论这个话题，本次主要关注的是基础模型的技术栈。

---


我把完整的开源AI代码库列表放在了“llama-police”(https://huyenchip.com/llama-police，该列表每6小时更新一次。其余大部分也放在了我的GitHub“cool-llm-repos”(https://github.com/stars/chiphuyen/lists/cool-llm-repos）列表中。

（本文作者Chip Huyen是实时机器学习平台Claypot AI的联合创始人。本文经授权后由OneFlow编译发布，转载请联系授权。原文：https://huyenchip.com//2024/03/14/ai-oss.html）

数据

如果你现在觉得AI发展十分火爆，那是因为它确实如此。我在Github上以GPT、LLM和Generative AI为关键词进行检索，仅与GPT相关的就有约11.8万条结果。

为减少工作量，我将搜索范围限定在拥有至少500 star数的代码库。结果显示，与LLM相关的有590个，与GPT相关的有531个，与Generative AI相关的有38个。此外，我偶尔会查看GitHub Trending和社交媒体上的新代码库。

经过长时间的搜索，我找到了896个仓库。其中，有51个是教程（例如dair-ai/Prompt-Engineering-Guide）和聚合列表（例如f/awesome-chatgpt-prompts）。尽管这些教程和列表都很有帮助，但我更感兴趣的是软件，不过我还是将其放进了最终列表，只是最后的分析是基于其余845个软件库（截止本文发布）。

这个过程虽然痛苦，但很值得，因为我更深入地了解了人们正在研究的内容，开源社区的合作程度之高令人惊叹，也让我意识到中国的开源生态系统与西方存在很大差异。

（毫无疑问，我也遗漏了很多库。你可以在这里（https://forms.gle/1ijNSnizgWQaVYK16）提交缺失的代码库，该列表每天会自动更新。欢迎提交star数少于500的代码库，我会持续关注这些仓库，并在它们达到500 star时将其添加到列表中！）

新的AI技术栈

我认为，AI技术栈包含四个层级：基础设施层、模型开发层、应用开发层和应用层。

![Image](https://appserversrc.8btc.cn/FvAyyl7m7_P-mpBpFwgJhVus0LpY)

1.基础设施层
基础设施是AI技术栈的底层，包括用于Serving的工具（例如vLLM、NVIDIA的Triton）、计算管理（例如SkyPilot）、向量搜索和数据库（例如Faiss、Milvus、Qdrant、LanceDB）等。

2.模型开发层
模型开发层提供了开发模型的工具，包括建模和训练框架（Transformers、Pytorch、DeepSpeed）、推理优化（如GGML、Openai/Triton）、数据集工程，评估等。任何涉及改变模型权重的操作都发生在这一层，包括微调。

3.应用开发层
在应用开发层，任何人都可以基于现成的模型开发应用程序。在过去的两年里，这一层的发展动态最多，并且仍在快速演进。这一层也被称为AI工程（AI Engineering）。

应用开发包括提示工程（Prompt Engineering）、RAG（Retrieve、Add、Generate）和AI界面（AI Interface）等。

4.应用层
应用层有许多基于现有模型构建的开源应用程序，其中最流行的应用类型包括编码、工作流自动化、信息聚合等。

除这四层外，还有另一个类别，即模型存储库（Model Repos）。这些存储库由公司和研究人员创建，用于分享与他们模型相关的代码。这一类别的存储库示例包括CompVis/stable-diffusion、openai/whisper和facebookresearch/llama。

AI技术栈的演进

我绘制了每一类别中代码库数量的累积月度图。在2023年推出Stable Diffusion和ChatGPT之后，新工具的数量呈爆炸式增长。2023年9月后，曲线似乎开始趋于平缓，这背后可能有三个潜在原因：

1.我的分析中仅包含star数500以上的库，而代码库积累这么多star需要时间。
2.大部分容易获得的成果（low-hanging fruits）已被收割，剩下的项目需要付出更多的努力来构建，因此能够构建...

---
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。