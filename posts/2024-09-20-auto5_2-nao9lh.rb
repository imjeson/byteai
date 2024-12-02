---
title: 'o1带火的CoT到底行不行？新论文引发了论战'
date: 2024-09-21
author: ByteAILab

---

To CoT or not to CoT？

OpenAI ο1 的诞生极大地提升了人们对 LLM 推理能力和思维链（CoT）的兴趣。一时之间，似乎思维链很快就会成为所有 LLM 的标配，但思维链并非万能，就连 OpenAI 自己也‍提到 o1 在某些任务上的表现并不比 GPT-4o 强，尤其是以语言为中心的任务。

---


近日，一篇来自德克萨斯大学奥斯汀分校、约翰·霍普金斯大学和普林斯顿大学的论文引发了热议，其模仿莎士比亚《哈姆雷特》的台词提出了一个对 AI 研究者和实践者来说至关重要的问题：To CoT or not to CoT？

![图片](https://mmbiz.qpic.cn/sz_mmbiz_jpg/KmXPKA19gWicBl14fnYPJHZpLbZEofSjplU9W3ZVD25TVfOuicyyADJQHsSzvCEOaWLaR5uOgJ9T7a7beUP5Lc1g/640?wx_fmt=jpeg&from=appmsg)

### 论文标题：To CoT or not to CoT? Chain-of-thought helps mainly on math and symbolic reasoning
### 论文地址：[https://arxiv.org/pdf/2409.12183](https://arxiv.org/pdf/2409.12183)
### GitHub 库：[https://github.com/Zayne-sprague/To-CoT-or-not-to-CoT](https://github.com/Zayne-sprague/To-CoT-or-not-to-CoT) （待更新）

简单来说，这篇论文研究了思维链（CoT）技术帮助 LLM 解决各式问题的有效性。

首先，该团队分析了近期的相关文献，比较了 CoT 与直接回答方法（DA）的性能表现。

之后，他们使用 20 个数据集和 14 个当今主流的 LLM 在零样本提示和少样本提示设置下进行了实验。

![图片](https://mmbiz.qpic.cn/sz_mmbiz_jpg/KmXPKA19gWicBl14fnYPJHZpLbZEofSjp07vMXKEwh1OlEGv8ia5f7odkomDV6XvQ7V9OnRllUgF4Cm2D6xZaq4A/640?wx_fmt=jpeg&from=appmsg)

结果表明，CoT 能极大助益 LLM 解决涉及数学和符号推理的任务，至于其它任务，CoT 的效果并不显著甚至可能有损模型性能。

另一个发现是 CoT 能帮助提升执行计算和符号操作的执行步骤，但却比不上能使用外部工具的 LLM。这是什么意思呢？该团队发现，相比于使用直接回答方法，使用 CoT 时 LLM 能更好地生成可执行的形式化方案规划；但如果使用语言模型来生成方案规划，然后再使用外部符号解算器来求解该规划，性能表现还会更好一些。

这样的结果忽然让 CoT 的处境变得有点尴尬：在 CoT 有用的问题上，我们能使用外部工具做得更好；在另一些问题上，CoT 的能力又有限。

因此，该团队认为：「第一，很多广泛使用 CoT 解决的问题其实根本没必要使用 CoT：现在已有更高效方法，能以远远更低的推理成本取得相近的性能。第二，基于提示词的 CoT 不够用了，我们看到人们迫切地需要更复杂精妙的方法，比如基于搜索、交互式智能体或针对 CoT 进行过更好微调的模型的方法。」

### 文献研究

首先，该团队调研了近期的相关文献，比较了使用或不用 CoT 的提示词的效果。

具体指标和流程这里就不多介绍了。总之，他们从 110 篇论文（35 篇 ICLR 论文和 75 篇 NAACL 和 EACL 论文）中整理出了 1218 个实验结果，涉及 264 个数据集。之后，他们将这些相关任务分成了 14 类，表 1 展示了其中几类的定义。

![图片](https://mmbiz.qpic.cn/sz_mmbiz_jpg/KmXPKA19gWicBl14fnYPJHZpLbZEofSjp4lyJvdKQQ4nTD5JoUVBCH5c3bYoPtKcs1xeF8VDa9brpGjDyVfdUOg/640?wx_fmt=jpeg&from=appmsg)

### 文献研究结果

图 2 展示了 CoT 为不同类型的任务带来的性能增量，即使用 CoT 提示法取得的性能减去使用直接回答法取得的性能。

![图片](https://mmbiz.qpic.cn/sz_mmbiz_jpg/KmXPKA19gWicBl14fnYPJHZpLbZEofSjp3lykpdxyO6lqkicop2OGMWFtNXicdRNice4HOgeemm3NSZbiaokqzh8uzA/640?wx_fmt=jpeg&from=appmsg)

可以看到，在这些任务上，CoT 平均仅能带来 3.75% 的提升。其中 CoT 带来增益最大的三类任务分别是：符号推理、数学、逻辑推理。在这三个任务上，CoT 实现的平均性能...

[更多内容请查看原文](原文链接)

---

<p align="center">💡 如果您喜欢这篇文章，请点击收藏和分享。</p>

---
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。