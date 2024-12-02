---
title: 'Nature子刊，北大团队通用AI框架对蛋白-蛋白对接进行综合结构预测，弥合实验与计算的差距'
date: 2024-08-09
author: ByteAILab

---

![图片](https://mmbiz.qpic.cn/mmbiz_png/XLCp9HBkwLka1W4xcibsZq2Mm3ibQzwuX0IOQ32roO7S0Wpud1vXUSH60Av6Cbuqs4cKRqCcicWftwZt0Hz3dWtzw/640?wx_fmt=png&amp;from=appmsg)

编辑 | 萝卜皮

蛋白质复合物结构预测在药物研发、抗体设计等应用中发挥着重要作用，然而由于预测精度有限，预测结果与实验结果经常出现不一致。

北京大学、昌平实验室以及哈佛大学的研究团队提出了 ColabDock，这是一个通用框架，它采用深度学习结构预测模型来整合不同形式和来源的实验约束，而无需进一步进行大规模的再训练或微调。

---


ColabDock 的表现优于使用 AlphaFold2 作为结构预测模型的 HADDOCK 和 ClusPro，不止在具有模拟残基和表面限制的复杂结构预测中，在借助核磁共振化学位移扰动以及共价标记进行的结构预测中也是如此。

另外，它还可以通过模拟界面扫描限制来帮助抗体-抗原界面预测。

该研究以「Integrated structure prediction of protein–protein docking with experimental restraints using ColabDock」为题，于2024年8月5日发布在《Nature Machine Intelligence》。

![图片](https://mmbiz.qpic.cn/mmbiz_png/XLCp9HBkwLka1W4xcibsZq2Mm3ibQzwuX0UjOw76KcvbXFcbK0S1fbLNzzXOC9Hg3WPyn6rS9ZafoaTr6FhW810g/640?wx_fmt=png&amp;from=appmsg)

蛋白质对接为理解生物机制提供了重要的结构信息。尽管深度模型在蛋白质结构预测方面发展迅速，但大多数模型都是以自由对接的方式进行预测，这可能会导致实验约束与预测结构不一致。

为了解决这个问题，北京大学、昌平实验室等机构的研究团队提出了用于受限复合物构象预测的通用框架——ColabDock，它是一个由稀疏实验约束引导的蛋白质-蛋白质对接的通用框架。

通过梯度反向传播，该方法有效地整合了实验约束的先验和数据驱动的蛋白质结构预测模型的能量景观，自动搜索满足两者的构象，同时容忍约束中的冲突或模糊性。

ColabDock 可以利用不同形式和来源的实验约束，而无需进一步进行大规模重新训练或微调。

![图片](https://mmbiz.qpic.cn/mmbiz_png/XLCp9HBkwLka1W4xcibsZq2Mm3ibQzwuX03X87qkicZd0F1icENyvOCNa6MagzJicxu5KWHlLejCI6lgN0SpW17iaWog/640?wx_fmt=png&amp;from=appmsg)

**图示：ColabDock 的工作流程。（来源：论文）**

该框架包含两个阶段：生成阶段和预测阶段。

在生成阶段，ColabDock 采用了基于 AlphaFold2 开发的蛋白质设计框架 ColabDesign。在 logit 空间中优化输入序列配置文件，以指导结构预测模型根据给定的实验约束和模板生成复杂结构，同时最大化 pLDDT 和 pAE 测量。

在预测阶段，根据生成的复合物结构和给定的模板预测结构。对于每个目标，ColabDock 会执行多次运行并生成不同的构象。最终构象由排序支持向量机（SVM）算法选择。

**性能稳健**

作为概念验证，研究人员采用 AlphaFold2  作为 ColabDock 中的结构预测模型。当然，这里也可以使用其他数据驱动的深度学习模型，例如 RoseTTAFold2 和 AF-Multimer。

研究人员用合成数据集和几种类型的实验约束上测试 ColabDock，包括 NMR 化学位移扰动 (CSP)、共价标记 (CL) 和模拟深度突变扫描 (DMS)。 

![图片](https://mmbiz.qpic.cn/mmbiz_png/XLCp9HBkwLka1W4xcibsZq2Mm3ibQzwuX02MFc3J5DZ2wufUDD1TzSxeAzrgEZ6G5BhFIrAFpELNhoYTlz2RZLrw/640?wx_fmt=png&amp;from=appmsg)

**图示：ColabDock 在验证集上的表现。（来源：论文）**

ColabDock 评估了两种类型的约束，即 1v1 和 MvN 约束。前者是残基-残基级别的，实例包括来自 XL-MS 的约束。后者是界面级别的，与 NMR 和 CL 实验有关。

在合成数据集上的测试结果表明 ColabDock 取得了令人满意的性能。此外，正如预期的那样，随着约束数量的增加，ColabDock 的性能也得到了提高。

即使只有很少的限制，ColabDock 在基准数据集和相同的框架设置上的表现也优于 AF-Multimer，并且在提供更多限制的情况下收敛到更少的构象，表明有效应用了附加信息。

![图片](https://mmbiz.qpic.cn/mmbiz_png/XLCp9HBkwLka1W4xcibsZq2Mm3ibQzwuX0H3bpt5DYPNxaWQObybhDLXLQmhREPLN6066vsgx5J12ibtAICHsz91w/640?wx_fmt=png&amp;from=appmsg)

**图示：ColabDock 在基准测试集上对比 ColabDock、HADDOCK 和 ClusPro。（来源：论文）**

与 HADDOCK 和 ClusPro 相比，当约束质量较高时，ColabDock 的表现更为突出。在两个实验数据集上，无论提供的约束数量和质量如何，ColabDock 的表现仍然优于 HADDOCK 和 ClusPro。

![图片](https://mmbiz.qpic.cn/mmbiz_png/XLCp9HBkwLka1W4xcibsZq2Mm3ibQzwuX0HJRyibBr9pqmTFicx6FRY4nAGFzsKmqiaNzdZU9aIrFtNb3iawiclsVibebw/640?wx_fmt=png&amp;from=appmsg)

**图示：ColabDock、HADDOCK 和 ClusPro 在抗体-抗原基准集上的比较。（来源：论文）**

这表明 ColabDock 在抗体设计方面具有潜在的应用价值。并且，在新发布的无偏数据集上，ColabDock 仍然表现出与 AF-Multimer 相当甚至更好的性能。

**局限性与结语**

ColabDock 也存在一些局限性。目前，ColabDock 只能接受距离小于 22 Å 的限制，这是由 AlphaFold2 中距离图的上限决定的。这一限制使得该模型仅适用于一小部分 XL-MS 试剂。

如果没有基于片段的优化，ColabDock 只能在 NVIDIA A100 图形处理单元 (GPU) 上处理少于 1,200 个残基的复合物，因为内存有限。

此外，该方法可能非常耗时，尤其是对于大型蛋白质复合物。使用 AlphaFold2 的 bfloat16 浮点格式版本有望帮助节省内存并加速计算。

相信未来，研究人员迭代优化之后，作为一个统一的框架，ColabDock 必将能够帮助弥合实验和计算蛋白质科学之间的差距。

论文链接：[https://www.nature.com/articles/s42256-024-00873-z](https://www.nature.com/articles/s42256-024-00873-z)

---
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。