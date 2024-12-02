---
title: '用AI自动设计智能体，数学提分25.9%，远超手工设计'
date: 2024-08-24
author: ByteAILab

---

基于 ADAS 所发现的智能体的性能大大优于最先进的手工设计的基线。
基础模型 (FM) 如 GPT 和 Claude ，正在成为通用智能体的强有力支持，被越来越多的用于多种推理和规划任务。

---

然而，在解决问题时，需要的智能体通常是具有多个组件的复合智能体系统，而不是单片模型查询 。此外，为了使智能体能够解决复杂的现实世界任务，它们通常需要访问外部工具，例如搜索引擎、代码执行和数据库查询。
因此，人们提出了许多有效的智能体系统构建块，例如思维链规划和推理、记忆结构、工具使用和自我反思。尽管这些智能体已经在各种应用中取得了显著的成功，但开发这些构建块并将它们组合成复杂的智能体系统通常需要特定领域的手动调整以及研究人员和工程师的大量努力。
然而，机器学习的历史告诉我们，手工设计的解决方案最终会被模型学习到的解决方案所取代。
本文，来自不列颠哥伦比亚大学、非营利人工智能研究机构 Vector Institute 等的研究者制定了一个新的研究领域，即智能体系统的自动化设计（ADAS，Automated Design of Agentic Systems），并提出了一种简单但有效的 ADAS 算法，名为元智能体搜索（Meta Agent Search），以证明智能体可以通过代码编程来发明新颖而强大的智能体设计。
该研究旨在自动创建强大的智能体系统设计，包括开发新的构建块并以新的方式组合它们。
实验表明，基于 ADAS 所发现的智能体的性能大大优于最先进的手工设计的基线。例如，本文设计的智能体在 DROP 的阅读理解任务中将 F1 分数提高了 13.6/100（与基线比），在 MGSM 的数学任务中将准确率提高了 14.4%。此外，在跨域迁移后，它们在 GSM8K 和 GSM-Hard 数学任务上的准确率分别比基线提高了 25.9% 和 13.2%。
与手工设计的解决方案相比，本文算法表现出色，这说明 ADAS 在自动化智能体系统设计方面的潜力。此外，实验表明，所发现的智能体不仅在跨相似领域迁移时表现良好，而且在跨不同领域迁移时也表现出色，例如从数学到阅读理解.

[图片1](https://mmbiz.qpic.cn/sz_mmbiz_png/KmXPKA19gW88KrsUlpnGHNxdnYU2VZ5PPzCzLaYAloYIjO7ibLa7cbvTa2A19lAsKkwnXYsmS2ibWHHAmtQ6xHDA/640?wx_fmt=png&amp;from=appmsg)

- 论文地址：https://arxiv.org/pdf/2408.08435
- 项目地址：https://github.com/ShengranHu/ADAS
- 论文主页：https://www.shengranhu.com/ADAS/
- 论文标题：Automated Design of Agentic Systems

**新研究领域：智能体系统的自动化设计（ADAS）**

该研究提出了一个新的研究领域 —— 智能体系统的自动化设计（Automated Design of Agentic Systems，ADAS），并描述了 ADAS 算法的三个关键组成部分——搜索空间、搜索算法、评估函数。ADAS 使用搜索算法跨搜索空间来发现智能体系统.

[图片2](https://mmbiz.qpic.cn/sz_mmbiz_png/KmXPKA19gW88KrsUlpnGHNxdnYU2VZ5PE58yos4F9h2rOhRiaQbz0PiceS25D3BE9UPHrlnyYyso0vibGovGfZGaA/640?wx_fmt=png&amp;from=appmsg)

**搜索空间**: 搜索空间定义了哪些智能体系统可以在 ADAS 中被表征并被发现。

**搜索算法**: 搜索算法定义了 ADAS 算法如何探索搜索空间。

**评估函数**: 根据 ADAS 算法的应用，可能需要考虑不同的优化目标，例如智能体的性能、成本、延迟或安全性。

该研究提出的简单但有效的 ADAS 算法——元智能体搜索的核心概念是指示元智能体迭代地创建有趣的新智能体，评估它们，将它们添加到智能体存储库中，并使用此存储库帮助元智能体在后续迭代中创建更有趣的新智能体。与现有的利用人类兴趣概念的开放式算法类似，该研究鼓励元智能体探索有趣的、有价值的智能体。

[图片3](https://mmbiz.qpic.cn/sz_mmbiz_png/KmXPKA19gW88KrsUlpnGHNxdnYU2VZ5PjaX5YGEc00iaBcVvfPW781icqKa6tdPsvd5UiayIGWJETNqlc8TgOsia3g/640?wx_fmt=png&amp;from=appmsg)

实验
所有实验结果表明本文发现的智能体大大优于基线最先进的手工设计的智能体。值得注意的是，该研究发现的智能体在 DROP 阅读理解任务上比基线提高了 13.6/100（F1 分数），在 MGSM 数学任务上比基线提高了 14.4%（准确率）。此外，研究者发现的智能体 ...

[图片4](https://mmbiz.qpic.cn/sz_mmbiz_png/KmXPKA19gW88KrsUlpnGHNxdnYU2VZ5PcAaEAIqW2jHsy3l0Svsor02Yb9W6JMibibY5hwPAHicWvlrFXRiaUnjLCw/640?wx_fmt=png&amp;from=appmsg)

案例研究
如图 3a 所示，元智能体搜索可以有效且逐步地发现性能优于最新手工设计的智能体。文本框中突出显示了重要的突破。

[图片5](https://mmbiz.qpic.cn/sz_mmbiz_png/KmXPKA19gW88KrsUlpnGHNxdnYU2VZ5PbJVljex6QFD2icQIjItJrQAYibLcvKFjWQWjguCxhEq6gvJX89NmhlFA/640?wx_fmt=png&amp;from=appmsg)

推理和问题 - 解决域
跨多个域的结果表明，元智能体搜索可以发现表现优于 SOTA 手工设计的智能体.

[图片6](https://mmbiz.qpic.cn/sz_mmbiz_png/KmXPKA19gW88KrsUlpnGHNxdnYU2VZ5PwnBmITuwurrQtUypywicwIQS2Q7Wniamqz747J7xytic6l2Paxpqcw29g/640?wx_fmt=png&amp;from=appmsg)

泛化性以及可迁移性
研究者进一步展示了所发现智能体的可迁移性和可泛化性.

[图片7](https://mmbiz.qpic.cn/sz_mmbiz_png/KmXPKA19gW88KrsUlpnGHNxdnYU2VZ5PYPS8NRk8BUPCTIrcSnB7tgOuCQbB3gVUMta0LD49QAL2Gs0mgchz5g/640?wx_fmt=png&amp;from=appmsg)

更令人惊讶的是，研究者观察到在数学领域发现的智能体可以迁移到到非数学领域。

[图片8](https://mmbiz.qpic.cn/sz_mmbiz_png/KmXPKA19gW88KrsUlpnGHNxdnYU2VZ5PRX87ooFtVog3wa337Bvoibkeqvo6XXrnF4RCFB7TFF3icey7QmWdJYaQ/640?wx_fmt=png&amp;from=appmsg)
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。