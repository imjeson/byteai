---
title: '为233种疾病推荐候选药物，中国科学院深度生成模型助力药物发现，登Nature子刊'
date: 2024-11-03
author: ByteAILab
---

<img src="https://mmbiz.qpic.cn/mmbiz_png/XLCp9HBkwLnDT20rmgXplrKvOhzh1jicAC0XltRzDmtlEsY7LVpZswnT8Dn3tA0dQMt5asJjpJkpovK8cERK72w/640?wx_fmt=png&amp;from=appmsg" alt="图片"/>

编辑 | 萝卜皮

了解转录对化学扰动的反应是药物发现的核心，但对疾病化合物组合进行详尽的实验筛选是不可行的。

为了克服这一限制，中国科学院、四川大学华西医院的研究人员提出了 PRnet，这是一种扰动条件下的深度生成模型，可预测转录对从未在体细胞和单细胞水平上进行实验扰动的新化学扰动的反应。

---


评估表明，PRnet 在预测新化合物、新途径和新细胞系的反应方面优于已有方法。PRnet 能够基于基因特征对基因水平的反应进行解释，并针对疾病进行计算机药物筛选。

PRnet 进一步识别并通过实验验证了针对小细胞肺癌和结直肠癌的新型化合物候选物。并且，PRnet 生成了大规模的扰动谱整合图谱，涵盖了 88 种细胞系、52 种组织和各种化合物库。

PRnet 提供了强大且可扩展的候选药物推荐工作流程，并成功推荐了 233 种疾病的候选药物。总体而言，PRnet 是一种有效且有价值的基因治疗筛选工具。

该研究以「Predicting transcriptional responses to novel chemical perturbations using deep generative model for drug discovery」为题，于 2024 年 10 月 26 日发布在《Nature Communications》。

<img src="https://mmbiz.qpic.cn/mmbiz_png/XLCp9HBkwLnDT20rmgXplrKvOhzh1jicAVSInSw01iaKNrgcWPaX6Y3XfH8fFdGf0eWMiaBkhk8kSGdZFicY6xcyicA/640?wx_fmt=png&amp;from=appmsg" alt="图片"/>

对化学扰动的转录反应揭示了生物功能的基本见解，并在疾病理解和药物发现中发挥着不可或缺的作用。批量和单细胞 RNA 测序 (scRNA-seq) 实验促进了在组学水平上对化学扰动进行高通量筛选（HTS）。

近期的 HTS 研究已对数千种将细胞或细胞系暴露于化合物的独立扰动进行了实验分析。这些对化学扰动的转录反应揭示了代表个体和细胞过程的连贯可解释的基因级程序，并根据化学扰动对其进行了量化。

尽管取得了令人鼓舞的进展，但实验筛选化学扰动仍然是一个耗时且昂贵的过程，新疗法的发现率很低。通过实验筛选疾病和化合物组合来彻底探索广阔的新型化学扰动空间是难以实现的。

为了解决现有实验方法有限的探索能力，中国科学院、四川大学华西医院的研究团队开发了 PRnet，这是一个灵活且可扩展的扰动条件深度生成模型，它支持预测对从未在批量和单细胞水平上进行实验研究过的新型化学扰动的转录反应。

PRnet 是一种基于编码器-解码器架构的新型生成模型，由三个组件组成，包括扰动适配器、扰动编码器和扰动解码器。PRnet 通过将化合物结构和未受干扰的转录谱作为输入来预测转录反应，从而适应各种扰动场景中的新型化合物和疾病。

<img src="https://mmbiz.qpic.cn/mmbiz_png/XLCp9HBkwLnDT20rmgXplrKvOhzh1jicADlWwUXemiakZxHByqo6xYL1cpRicpAFrS6Kygqd4cub8MNrribocRz7jA/640?wx_fmt=png&amp;from=appmsg" alt="图片"/>

图示：方法概述。（来源：论文）

Perturb-adapter 使用简化的分子输入线路输入系统 (SMILES) 化学编码作为输入，从而能够推广到无需先验知识和注释的未见过的化合物。

PRnet 的可学习潜在空间有助于解释基因水平的反应并捕捉异质性。PRnet 经过了近一亿个批量 HTS 观测（受 175,549 种化合物干扰）和数千万个单细胞 HTS 观测（受 188 种化合物干扰）的训练。

至关重要的是，该模型以数据驱动的模型运行，可以有效地推广到新的扰动。

<img src="https://mmbiz.qpic.cn/mmbiz_png/XLCp9HBkwLnDT20rmgXplrKvOhzh1jicA2Ox1g29pC81niaqA4oD8BbyWXicNhJQG6IZhecibPGXAjPnFEtyy1hm3g/640?wx_fmt=png&amp;from=appmsg" alt="图片"/>

图示：PRnet 在预测基因表达的扰动后变化方面优于其他方法。（来源：论文）

评估表明，PRnet 在预测大量和单细胞 HTS 数据中对新化合物、途径和细胞系的转录反应的变化和表达方面优于其他方法。

为了进一步验证其有效性，该团队利用 PRnet 识别了针对小细胞肺癌（SCLC）的新型生物活性化合物，并寻找针对结直肠癌（CRC）的新型天然化合物。实验验证表明，新型候选化合物在适当的预测浓度范围内对 SCLC 和 CRC 细胞系具有活性。

<img src="https://mmbiz.qpic.cn/mmbiz_png/XLCp9HBkwLnDT20rmgXplrKvOhzh1jicAHibEa9J5BsUCv3A5Xr93MhMgM8FdMmNEJaEbWjGgW9t9s8LKr23BDdg/640?wx_fmt=png&amp;from=appmsg" alt="图片"/>

图示：PRnet 确定的针对小细胞肺癌和结直肠癌的候选药物。（来源：论文）

该模型的灵活性和可扩展性使其成为筛选各种疾病候选药物的宝贵工具。因此，研究人员利用 PRnet 在计算机上筛选各种化合物库，并生成了一个虚拟的大型扰动图谱整合图集，涵盖 88 种细胞系和 52 种组织，以及包含 935 种 FDA 批准药物、4158 种活性化合物、30,456 种天然化合物和 29,670 种类药物化合物的化合物库。

<img src="https://mmbiz.qpic.cn/mmbiz_png/XLCp9HBkwLnDT20rmgXplrKvOhzh1jicAGBlyFBHvJ7lvExcdI6MxaSfP9VRDiaZ8sK8IFOV8jjC1xXkQc6J9Kfw/640?wx_fmt=png&amp;from=appmsg" alt="图片"/>

图示：PRnet 在大型扰动轮廓集成图谱上提供了强大且可扩展的推荐工作流程。（来源：论文）

PRnet 还根据基因集的参考变化，为疾病提供了稳健且可扩展的候选推荐工作流程。给定疾病特异性或敏感的化合物基因特征，采用基因集富集分析 (GSEA) 来评估化合物对这些疾病的潜在功效。

PRnet 根据概况图谱成功推荐了 577 项研究中的 577 种候选药物清单，用于 233 种不同的疾病。

在三种代谢紊乱病例中，包括非酒精性脂肪性肝炎 (NASH)、多囊卵巢综合征 (PCOS) 患者和炎症性肠病 (IBD)，PRnet 推荐的药物得到了先前的人体或动物研究文献的支持。

PRnet 能够有效预测对新的复杂化学扰动的转录反应并筛选针对特定疾病的大规模化合物库，因此成为基于基因的治疗筛选的有价值的工具。

论文链接：[https://www.nature.com/articles/s41467-024-53457-1](https://www.nature.com/articles/s41467-024-53457-1)
---
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。