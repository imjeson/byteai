```
---
title: 'ByteDance Research登Nature子刊：AI+冷冻电镜，揭示蛋白质动态'
date: 2024-11-14
author: ByteAILab
---

2024 年的诺贝尔化学奖颁发给了在结构生物学领域取得重大成就的 David Baker 团队和 AlphaFold 团队，激发了 AI for science 领域新的研究热潮。

近两年科学界一个饱受争议的命题是：“AlphaFold 是否终结了结构生物学？” 首先，AlphaFold 之类的结构预测模型的**训练数据**正是来自于以 X 射线、冷冻电镜（cryo-EM）等为代表的传统结构解析方法。

---
其次，冷冻电镜技术非常擅长解析蛋白质的**动态**，而这正是 AlphaFold 所无法做到的。巧合的是，冷冻电镜这项技术于 2017 年也获得了诺贝尔化学奖。

那么，以 AlphaFold 为代表的 AI 技术能否辅助以 cryo-EM 为代表的传统方法？两个诺奖级技术的碰撞，能够擦出什么样的火花？

**ByteDance Research 提出 AI for Science 模型被 Nature 子刊收录**

近日，来自字节跳动 ByteDance Research 团队的研究人员提出了 CryoSTAR 方法，成功将来自原子模型的结构先验应用到冷冻电镜实验数据的动态解析中，为解决这一问题带来了新的思路和方法。该成果相关论文 “CryoSTAR: Leveraging Structural Prior and Constraints for Cryo-EM Heterogeneous Reconstruction” 已刊发于 Nature 旗下刊物 Nature Methods，李宜来、周奕、袁璟为共同一作，顾全全教授为通讯作者。

- 论文链接：[https://www.nature.com/articles/s41592-024-02486-1](https://www.nature.com/articles/s41592-024-02486-1)
- 论文主页：[https://bytedance.github.io/cryostar/](https://bytedance.github.io/cryostar/)
- 开源链接：[https://github.com/bytedance/cryostar](https://github.com/bytedance/cryostar)

**基于结构先验和约束的动态解析**

CryoSTAR 是首个成功在冷冻电镜实验数据上应用蛋白质原子结构模态先验的方法，方法的主要特点有：

1. **结合蛋白质结构先验知识**：CryoSTAR 方法创新性地利用原子模型信息作为结构正则化来解决冷冻电镜数据中的构象动态问题，这与以往大多数仅从计算机视觉角度处理问题的方法不同。它要求一个初始原子模型作为参考，将其结构信息用于适当地约束模型解析出的构象动态，从而缩小搜索空间，避免错误的解析结果，实现更好更快的收敛。

2. **输出两种模态的解析结果**：该方法独特之处在于它能同时输出粗粒度的原子模型和密度图解析结果，这种多维度的结果输出有助于研究人员更全面地了解生物分子的结构和动态过程。同时，密度图的输出结果也可以验证原子模型结果的置信程度，检验粗粒度原子模型的动态是否能够充分被数据所支持。

该方法分为两个阶段：

1. 第一阶段通过结构正则化约束的变分自动编码器（VAE）解析数据中的动态构象。CryoSTAR 通过 Encoder，将构象的动态压缩到一个潜在变量中；Decoder 将潜在变量解析成相应的先验粗粒度原子模型的变形来拟合数据。它在三个基本假设下进行基于结构正则化：一是同一链上的两个相邻残基应始终保持连接，通过连续损失函数来约束；二是预测变形后残基不应过于靠近，通过冲突损失函数来惩罚碰撞；三是局部结构应尽可能刚性，通过从先验原子结构模型构建弹性网络并使用弹性网络损失函数来鼓励这种刚性，同时还采用自适应松弛方法来选择弹性网络中的边进行正则化，以避免参考原子模型带来的过度偏差。

2. 第二阶段通过训练一个密度图解码器来得到密度图模态的动态构象解析结果。在 VAE 训练完成后，提取所有图像对应的潜在变量并用于训练密度图解码器。密度图的细节优化由输入图像约束，不受结构先验和正则化的直接影响，从而最小化结构先验对输出密度图的 bias，使得生成的密度图可用于评估和验证粗粒度原子结构模型。

**多种典型蛋白数据上的实验验证**

【图片链接展示保留，请查看原文】。

【图片链接展示保留，请查看原文】。

对于 TRPV1 通道蛋白（EMPIAR-10059），使用 PDB: 7RQW 作为参考先验原子模型，cryoSTAR 发现了蛋白外周可溶结构域的微妙而平滑的运动，每个亚基的运动可通过不同主成分可视化。研究还表明结构正则化在揭示膜蛋白动力学方面具有关键作用，相比之下，没有结构先验的方法如 cryoDRGN 在膜蛋白的动态解析方面存在不足。

**总结：利用跨模态数据解析自然现象**

字节跳动 ByteDance Research 提出的新的结合结构先验的方法 （CryoSTAR） 显著提升了冷冻电镜（Cryo-EM）在动态构象解析中的应用潜力。通过利用原子结构模态先验作为约束，同时输出两种模态的解析结果，这一创新方法在技术上展示了其独特的优势，并为科学研究打开了新的大门。

...

【部分内容省略，继续参考原文】

...

**ByteDance Research AI 制药团队持续在 AI for Science 方向发力**

ByteDance Research AI 制药团队致力于将人工智能技术应用于科学研究与药物开发。团队在生成式蛋白质设计、蛋白质构象预测以及冷冻电镜解析等领域取得了业界瞩目的成果。

- 蛋白质设计：团队研发了基于大规模蛋白质语言模型的序列设计方法 LM-Design，大幅提高了蛋白质序列设计的准确度与效率；研发了结合扩散模型与语言模型的新一代蛋白质基础模型 DPLM 1/2，首次全面统一了蛋白质建模、理解与生成；研发了基于偏好优化的抗体设计方法 AbDPO，能够设计出同时满足多种性质和能量要求的抗体。
- 蛋白质动态构象预测：团队研发了 ConfDiff 等模型，准确预测了蛋白质的构象变化，加深了对蛋白质生物过程的理解，还为新药研发提供了可靠的理论基础。
- 冷冻电镜解析：团队研发了 CryoSTAR 电镜解析工具，结合人工智能技术和高分辨率成像，有助于揭示复杂生物分子体系的构象特征和动态变化；研发了第一个蛋白质密度基座模型 CryoFM，为下一代电镜解析算法奠定了基础。

团队的研究成果多次发表在 Nature 子刊、ICML、NeurIPS、ICLR 等顶级学术会议上，得到学术界和业界的广泛认可。

**参考文献**

1. Zheng Z, Deng Y, Xue D, et al. Structure-informed language models are protein designers [C]//International conference on machine learning. PMLR, 2023: 42317-42338.
2. Wang X, Zheng Z, Ye F, et al. Diffusion Language Models Are Versatile Protein Learners [C]. International Conference on Machine Learning, 2024.
3. Wang X, Zheng Z, Ye F, et al. DPLM-2: A Multimodal Diffusion Protein Language Model [J]. arXiv preprint arXiv:2410.13782, 2024.
4. Zhou X, Xue D, Chen R, et al. Antigen-Specific Antibody Design via Direct Energy-based Preference Optimization [C]. NeurIPS, 2024.
5. Wang Y, Wang L, Shen Y, et al. Protein Conformation Generation via Force-Guided SE (3) Diffusion Models [C]. International Conference on Machine Learning, 2024.
6. Li Y, Zhou Y, Yuan J, et al. CryoSTAR: leveraging structural priors and constraints for cryo-EM heterogeneous reconstruction [J]. Nature Methods, 2024: 1-9.
7. Zhou Y, Li Y, Yuan J, et al. CryoFM: A Flow-based Foundation Model for Cryo-EM Densities. arXiv preprint arXiv:2410.08631, 2024.
```
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。