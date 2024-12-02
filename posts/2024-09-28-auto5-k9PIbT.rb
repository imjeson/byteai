---
title: '新「AI科学家」？MIT整合多智能体，实现材料科学研究自动化'
date: 2024-09-29
author: ByteAILab

---

人工智能（AI）的一个关键挑战是：如何创建能够通过「探索新领域」、「识别复杂模式」和「揭示海量科学数据中隐藏的联系」来自主推进科学理解的系统。

在最近的工作中，麻省理工学院（Massachusetts Institute of Technology）原子与分子力学实验室（LAMM）的研究人员提出了 SciAgents，一种可以整合利用三个核心概念的方法：

（1）使用大规模本体知识图谱来组织和互连不同的科学概念；
（2）一套大型语言模型（LLM）和数据检索工具；
（3）具有现场学习能力的多智能体（agent）系统。

---


SciAgents 应用于生物启发材料，揭示了许多看似不相关的隐藏的跨学科关系，实现了超越传统人类驱动研究方法的规模、精确度和探索能力。

「SciAgents 可用作自主或协作工具来协助人类研究人员。该系统提供了一种更强大的方法来处理大量数据，为探索自然启发的设计或意想不到的材料特性提供了创新途径。」论文通讯作者、麻省理工学院工程学教授 Markus J. Buehler 发推文表示，「例如，在材料科学领域，SciAgents 已经展示了如何将生物学、音乐和艺术原理融合在一起来创造出新的仿生材料。」

「通过同构映射，人们在贝多芬的《第九交响曲》和生物结构之间找到了相似之处，指出人工智能驱动的洞察力在各个学科领域具有更广泛的适用性。这个项目使我们能够提高研究人员的能力，使他们能够探索更大的数据集并提出基于庞大、互联的知识网络的假设。」他补充道。

该研究以「SciAgents: Automating scientific discovery through multi-agent intelligent graph reasoning」为题，于 2024 年 9 月 9 日发布在 arXiv 预印平台。

传统科学研究依赖于人类研究者的创造力和背景知识，但面临着庞大数据量和跨学科整合的挑战。AI 技术，尤其是 LLMs，能够分析和综合大量数据，揭示人类难以发现的模式，从而加速科学发现。

然而，LLMs 在专业知识和准确性方面仍然存在不足，需要通过合适的提示策略来提高它们的表现。

麻省理工学院的研究人员引入了一个多智能体 AI 框架，旨在通过利用 LLM 和全面的本体知识图谱自主生成和完善科学研究假设。

两种策略

该研究使用了两种生成新科学假设的策略，均利用团队智能，系统性地探索未开发的研究领域。

第一种策略为预编程交互，智能体之间按照预定任务顺序进行互动，从而确保假设生成的一致性和可靠性。

第二种策略采用完全自动化的智能体交互，没有预设的交互顺序，使其能够灵活适应研究过程中的变化，并允许人类专家在不同阶段进行干预，以优化假设的质量和相关性。

应用于仿生材料

研究人员将该模型应用于仿生材料领域。结果表明，将 AI 智能体与专业角色相结合，可以解决科学发现的复杂性和跨学科性，具有巨大的研究潜力。自动化系统有效地驾驭了知识图谱中错综复杂的关系网，生成了与尚未满足的研究需求相一致的多样化和新颖的假设。

所提出的方法利用类似于生物系统的模块化、分层组织的智能群，通过多次迭代来模拟在思考和反思问题的过程中协商解决方案的过程，提供了一种比人工智能系统生成的传统零样本答案更细致入微的推理方法。

数据的本体知识图谱表示在该方法中起着至关重要的作用，因为它是指导研究想法生成的基础结构，确保人工智能智能体提出的假设既来源于庞大的相互关联的科学概念网络，又植根于其中。

通过系统性地浏览本体知识图谱，该多智能体系统可以识别并利用以前未被发现的联系，从而创造出既可行又具有突破性的创新想法。

评估策略的纳入是一个重要的战略方面，它反映了传统研究策略中常见的对抗关系，例如基于团队的努力或同行评审。

一个显著的特点是，自主多智能体系统可以自行开发复杂的问题解决策略。随着更强大的基础模型的出现，尤其是具有更好的长期规划和推理能力，这类结果有望得到改善。

事实证明，多智能体方法在将科学发现过程分解为可管理的子任务方面特别有效，从而能够更系统地探索知识领域。

通过为每个智能体分配不同的角色（从路径生成和深入分析到假设制定和批判性审查），该团队实现了研究思路的全面而严格的自发展。

实验表明，该系统可以持续产生具有高度新颖性和可行性的假设，并得到丰富的上下文数据和反映传统科学方法的迭代反馈机制的支持。

例如，加入特定的优先建模和模拟任务，提供了直接途径来加入额外的机制来征求新的基于物理的数据（例如，通过运行密度泛函理论模型、分子动力学、有限元/差分求解器等）。

因此，该方法不仅在研究问题方面具有巨大潜力，而且在扩展第一性原理数据集方面也具有巨大潜力。如果大规模部署，这可以帮助研究人员生成大型材料数据集，从而战略性地扩展目前已知的范围。

根据执行效率，可以在几天内生成数万个单独的结果，如果通过一组标准（例如新颖性、可行性或满足目标的程度）进行筛选，则可以为生成材料信息学生成高效的创新框架。

视频：<a href="https://mp.weixin.qq.com/s/rR2bRS2VMqzEPCYiyS9vEA">https://mp.weixin.qq.com/s/rR2bRS2VMqzEPCYiyS9vEA</a>

这项研究的主要贡献之一是展示了人工智能驱动的智能体如何自主生成、批判和改进科学假设，为传统研究方法提供了一种可扩展且有效的替代方案。

通过整合工具来评估与现有文献的新颖性，进一步增强了所生成假设的有效性，确保系统不仅能产生创新的想法，而且还能消除先前研究的冗余。

论文链接：<em>https://arxiv.org/abs/2409.05556</em>

相关内容：<em>https://x.com/ProfBuehlerMIT/status/1837470474344767793</em>

---
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。