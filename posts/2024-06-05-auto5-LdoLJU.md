---
title: '1.8B参数，阿里云首个联合DNA、RNA、蛋白质的生物大模型，涵盖16.9W物种'
date: 2024-06-06
author: ByteAILab

---

编辑 | 萝卜皮

不久之前，Google DeepMind 发布了 AlphaFold3，再次引发了人们对「AI + 生命科学」的讨论。

在学界，科学家的目标往往是先认识世界，然后在认识的基础上改造世界。

---
但是在生命科学领域，人类对整个生命的理解与认识还如九牛一毛、冰山一角；建立对生命系统的多维度深刻认识是当前人类研究的重要一步，AI 是达成这一步的重要工具。

近期，阿里云飞天实验室发布并开源了业界首个联合 DNA、RNA、蛋白质的生物大模型「LucaOne」。这是一种新型预训练基础模型，旨在综合学习遗传和蛋白质组语言，涵盖 169,861 个物种的数据。

该模型不仅可以对核酸、蛋白质的内部特征进行挖掘，还可识别核酸与蛋白质之间的联系，可以帮助研究人员探索更多生物系统的内在逻辑与规则。

该研究的预印版本「LucaOne: Generalized Biological Foundation Model with Unified Nucleic Acid and Protein Language」，已于 2024 年 5 月 14 日发布在 bioRxiv 预印平台。

开源地址：https://github.com/LucaOne

论文链接：https://www.biorxiv.org/content/10.1101/2024.05.10.592927v1

**LucaOne 为何能快速跨模态处理数据**

LucaOne 的核心亮点在于其独特的自监督加半监督学习架构，该架构基于生物语言的本质属性设计，使得模型能够在 10 亿量级的序列与注释信息上进行学习，参数规模约 1.8 B。

这一设计不仅允许模型处理核酸和蛋白质数据，而且能够识别两者之间的内在联系，即生物学中心法则中「DNA 到 RNA 再到蛋白质」的转化过程。

图示：LucaOne 的架构图，从数据到模型构建再到下游任务应用。

通过学习「中心法则」，LucaOne 能够很好得识别 DNA 序列与对应蛋白质之间的内在联系，这对于理解生命活动的基本规律十分重要。模型提供的基础能力，可以帮助研究人员破译更多中心法则相关的细节，让人们更加深入地理解生物世界的底层逻辑。

「这个模型目标是希望学习生物系统的底层编码，目前这个版本以基因组、转录组、蛋白质组为核心。其中的核苷酸及氨基酸序列是生物系统里的两种模态，放在一起统一学习能帮助模型更快学习到生物系统的编码体系。」该项目的负责人、阿里云飞天实验室生物计算研究总监李兆融解释道。

图示：LucaOne的训练数据、训练任务与在基因与蛋白质上的表征能力。

为了使预训练大模型模型学习更彻底、更好地与下游任务模式的契合、更广泛的应用，LucaOne 除了利用核酸与蛋白质本身的序列数据进行自监督学习之外，也加入了核酸与蛋白质的一些基础的重要的注释信息来进行半监督学习。

这种设计了加速模型的训练效率，使模型在学习的数据维度、量级、及参数量上达到一个很好的平衡——既覆盖足够多的物种，又保证模型的规模在一个可以被大规模高效使用的范围内。

图示：LucaOne对不同类型输入的下游任务的适用能力。

「这里我们考虑的是生物序列的信息密度，虽然不能这样武断的说，但是大致上基因组的信息密度是低于文本信息的，并且可能分布不均。比如，生物序列里可能会存在一些无意义片段，且片段非常长；应对这类问题，我们需要一些取巧的方式。」李兆融解释道，「因此，在我们设置了 8 个有监督的任务，这使得模型更有效的进行学习。」

「模型的参数有 1.8 B，什么概念呢？我们希望模型即足够「大」，能理解复杂生物系统，又不至于太大影响下游的使用效率。在整理高质量数据后，我们将模型参数设置在这个级别。」

**LucaOne 在下游任务中的稳健性能**

为了验证 LucaOne 对各类生物计算任务的价值，研究人员设置了一系列测试验证：首先是一个「异想天开」的任务，假设一群火星人来到地球，仅基于测序和建模能力，能否学习到分子生物学的一个核心规则：中心法则。

他们选取 13 个物种的核酸序列和其对应蛋白的正负样本数据集，关系对总数量为 24000，其中正负样本比例 1：2。其中基因序列数据是其在基因组的原始数据，包括了大量的非编码区（内含子，调控元件，及可能的「垃圾片段」等）。

为了验证模型的学习能力，研究人员采用训练：验证：测试比例为：4：3：25；即仅 3200 组数据作为训练，18750 组数据作为测试集来预测其核酸序列是否可以翻译成数据组里的蛋白序列。

图示：LucaOne对中心法则的学习能力。

实验结果显示，LucaOne 在中心法则学习任务上取得了显著成效，预测准确率达到 0.85，远优于其他计算方法。

当分析细分表现时发现，LucaOne 在处理具有特殊进化适应性的生物如海鞘时，预测表现特别差。海鞘利用中心法则的具体规则-密码子偏好性，与其他生物明显不同。研究人员表示，这种情况可以认为海鞘用的是一种中心法则语法「方言」。而这种「方言」在训练数据集里仅有 100 条，因此模型没有很好的学习到这种规则。这表明了生物世界的多样性与复杂性，也为模型未来的数据扩充和优化指明方向。

在另外广泛选取的 7 个任务里，LucaOne 也都表现优异，尤其是在流感 H3N2 病毒的免疫逃逸风险预测任务中，LucaOne 结合简单感知机模型实现了 100% 的准确率，可以为这一类公共卫生的重要问题提供了有力的支持。

图示：流感 H3N2 病毒的免疫逃逸风险预测。

这也是一个跨多个专业团队的长达1年的持续工作成果。

中山大学医学院施莽教授及其团队深度参与了 LucaOne 模型的数据设计与验证，提供了丰富的生物学视角和经验。

「LucaOne 是一项极为重要的尝试。我们首次尝试将整个生物界的基因组和蛋白质组的数据压缩到一个模型中进行学习，这为我们提供了一个前所未有的研究视角。」施莽教授表示。

「在这一研究过程中，我们已经发现了许多有趣的现象。最让我惊讶的是，在没有任何先验知识的前提下，LucaOne 确实能够更有效地学习中心法则中核酸与蛋白质之间的对应关系。这是一种全新的研究方法，我期待利用这个模型探索更多的生物学问题。」施教授说。

中国医学科学院北京协和医学院病原生物学研究所所长、美国微生物科学院会士舒跃龙教授及其团队参与了 LucaOne 在流感病毒方面的分析与验证工作，并与阿里云生物计算团队持续开展「AI + 病原学」的前沿探索。

舒跃龙教授表示：「将前沿的 AI 技术与病原生物学相结合具有重大的科学意义和社会价值。LucaOne 模型为这一交叉领域的研究提供了强大的工具。我们与阿里云团队正在进行更深入的合作研究。」

「我坚信，通过这种紧密的跨学科协作，我们能探索更多病原生物起源进化、跨种传播以及感染致病等方面的规律，为传染病防控和生物安全做出更大的贡献。」舒教授说。

李兆融表示：「有两件事情我们会继续往下做。第一是不断去突破生物系统基础模型的边界，我们行业正在积累更多的基础数据，也有非常丰富的其他信息可以补充学习，我们看到的，听到的，感受到的丰富多彩的生物世界都是模型学习的材料。这也会随着更多 AI 技术的创新一起推动这一类基础模型的进步。」

「同时我们在和多个顶尖的科研团队就几个特定领域进行持续的应用研究，主要围绕在微生物及病原学领域。这几个方向有明确的社会价值，以及也能和基础模型研发互相借鉴， 共同探索前进。」李兆融说。

该团队相信，随着更多数据、更丰富模态的加入，以及模型的持续升级，LucaOne 将更深入揭示生物系统的智能，推动 AI 在生物科学、疾病诊断、药物开发等领域的广泛应用。随着 LucaOne 模型的开源，全球科研人员将共享这一生物计算的强大工具，共同加速生命科学的探索与创新。

---

请将Body部分的内容转化为不带html标签的Makedown的内容。再整体按照如下Makedown格式标准输出。
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。