---
title: '首次，西湖大学用蛋白质语言模型定向改造碱基编辑器，登Cell子刊'
date: 2024-05-09
author: ByteAILab
---

编辑 | ScienceAI

在基因组编辑领域，单碱基编辑器通过将可编程的DNA结合蛋白与碱基修饰酶融合，实现在不引起DNA双链断裂的情况下，对基因组中特定碱基进行精确修改。

尽管依赖于胞嘧啶（C）碱基编辑器（CBE）或腺嘌呤（A）碱基编辑器（ABE）介导的脱氨反应，这些编辑器能够实现C到胸腺嘧啶（T）或A到鸟嘌呤（G）的突变，但它们在诱导所有类型的点突变，尤其是颠换突变方面仍存在局限性。

---


近期，西湖大学团队在《Molecular Cell》上发表了一篇题为「Protein language models-assisted optimization of a Uracil-N glycosylase variant enables programmable T-to-G and T-to-C base editing」的研究文章。

这项研究首次利用蛋白质语言模型（PLM）对尿嘧啶-N-糖基化酶（UNG）进行改造，开发出高活性突变体，该突变体能够识别正常的T和C。基于此，研究者构建了一种新型碱基编辑器TSBE，它能够有效地实现T到G或T到C的编辑。

原文链接：[https://doi.org/10.1016/j.molcel.2024.01.021](https://doi.org/10.1016/j.molcel.2024.01.021)

Code:[https://github.com/westlake-repl/ProteinLM-TDG2-Mutation](https://github.com/westlake-repl/ProteinLM-TDG2-Mutation)

研究团队首先通过调整尿嘧啶DNA糖基化酶（UDG）的底物特异性，获得特异性识别胞嘧啶的胞嘧啶糖基化酶（CDG）和特异性识别胸腺嘧啶的胸腺嘧啶糖基化酶（TDG）。

在nCas9和sgRNA的精确引导下，这些酶能够切割T或C碱基，实现一步创建无碱基位点，在后续的DNA修复过程中产生更特异和高效的颠换突变。

图1：基于尿嘧啶DNA糖基化酶变体开发新型碱基编辑器

研究团队首先将UDG变体CDG和TDG融合在SpCas9n的N端，得到的N-CDG只有较低的编辑C碱基的能力，N-TDG编辑T碱基的效果同样微弱。

通过将CDG插入SpCas9n的中间得到CE-CDG，编辑C碱基的效率大大提高，碱基转换以C>G为主。

然而将TDG插入SpCas9n的中间得到CE-TDG（TSBE1），编辑T碱基的效果仍不理想。

图2：TDG与SpCas9n的不同融合方式及编辑效率

为了进一步优化TSBE，研究者采用了蛋白质语言模型（PLM）来预测和设计TDG的高活性突变体（图3），这一策略显著提高了TSBE的蛋白进化效率。

蛋白质语言模型借鉴了自然语言处理（NLP）中的「语言模型」概念，通过分析蛋白质氨基酸序列来预测其结构和功能。尽管蛋白质语言模型在特定酶的优化和分子进化中的应用尚属首次，但其潜力已在本研究中得到验证。

图3：蛋白质语言模型预测TDG突变体及实验验证的流程

通过设计语言模型打分和排名方案，研究人员选择出可能提高酶活性的TDG变体。通过实验验证突变体功能，发现在验证的48个预测的TDG突变体中，超过50％的突变体展现出1.5-2倍的酶活性增强，成功率远远高于随机诱变。

优化后的TSBE能在人细胞系中有效地诱导T到G或T到C的碱基替换，并且能够精确地纠正肥胖小鼠模型db/db胚胎的致病突变。

图4：TSBE在小鼠胚胎中高效诱导碱基转换

值得注意的是，近期通过随机突变和筛选UNG突变体，也有研究成功开发出了针对C和T碱基的颠换编辑器[1]，并且某些增强TDG功能的突变与蛋白质语言模型预测的结果相一致。提示蛋白质语言模型与传统的随机突变和筛选方法，在蛋白质定向进化领域具有潜在的协同作用。

综上所述，本研究的发现不仅为开发新型碱基编辑器建立了新策略，而且还证明了利用蛋白质语言模型，无需大量特定任务训练数据或实验验证，即可用于酶的分子进化的巨大潜力。这些发现将为未来的基因组编辑技术发展开辟新的道路。

参考文献

1. Ye, L., Zhao, D., Li, J., Wang, Y., Li, B., Yang, Y., Hou, X., Wang, H., Wei, Z., Liu, X., et al. (2024). Glycosylase-based base editors for efficient T-to-G and C-to-G editing in mammalian cells. Nature Biotechnology. 10.1038/s41587-023-02050-w

来源 /转载于西湖大学医学院新闻动态：[https://medicine.westlake.edu.cn/News/202402/t20240221_37225.shtml](https://medicine.westlake.edu.cn/News/202402/t20240221_37225.shtml)
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。