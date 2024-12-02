---
title: '元象推出国内首个基于物理的3D动作生成模型MotionGen'
date: 2024-08-30
author: ByteAILab
---

一句话生成复杂3D动作，效果惊艳！测试期可申请免费试用。

3D内容制作领域，生成逼真的角色动作生成是一个持续挑战，传统方法依赖大量的手K制作，或昂贵动作捕捉设备，效率低、成本高、难以生成一般运动任务或适应复杂场景和交互。

---


元象XVERSE推出国内首个基于物理的3D动作生成模型MotionGen，创新性融合大模型、物理仿真和强化学习等前沿算法，让用户输入简单文本指令，就能快速生成逼真、流畅、复杂的3D动作，效果惊艳，标志着中国3D AIGC领域的重大突破。

现在起，零经验创作者也能轻松上手，创造高质量动画，为动画、游戏、电影和虚拟现实行业带来了极高创作自由度。

作为国内领先的AI+3D公司，元象研发了多款创新AIGC工具，包括广东首批获国家备案的元象大模型、图文多模态大模型、基于3DGS革命性技术的3D场景生成工具、让“虚拟世界活起来”的3D动作自动生成算法等。元象的目标是持续提升认知智能（AI）和感知智能（3D），加快迈向通用人工智能（AGI），让每个人能自由地“定义你的世界”。

### 3D动作生成效果

通过精准文本解析、真实物理规则解析以及动作和风格上的多样性，模型支持从基础行走到复杂的肢体运动的各类动作创意需求，使3D角色动画制作更加高效。

#### 精准文本理解

能够深入分析复杂的长句指令，根据复杂语义准确生成相应的动作，实现文本到动作的无缝连接，为3D角色提供了广泛的行为选择。

#### 动作丰富性

能够创造出多种类型的动作，覆盖了行走、奔跑、跳跃、踢击、旋转、打击、拉伸和弯腰等，为3D角色提供了广泛的行为选择。

#### 真实物理仿真

所生成的动作不仅符合描述要求，而且会根据实际物理环境做出自然的调整，动作连贯且符合物理真实（如下图：角色冲刺后自主进行刹车）。

#### 风格多样性

即便是执行同一种动作，模型也能够根据文本中描述的微妙差异来呈现不同的风格变化，让每个动作都具有独特性和可识别性。

### MotionGen技术实现

3D动作生成的传统方法存在诸多挑战：运动控制器（motion controller）方法，设定参数后能生成简单动作，但无法生成复杂动作；时空优化（spacetime optimization）方法，通过优化每帧位置和姿态，能生成流畅复杂的动作，但需精心设计目标函数和手动调参，工作量大，动作也无法复用到变化的环境或任务中；运动学（kinematic）方法，能生成高质量的单个动作，但处理不好重力和惯性等物理约束，连续动作会不够真实；基于物理的运动控制方法，对角色的每个关键施加力和力矩，让动作符合物理规律，但无法直接用在传统的生成模型中。

MotionGen工具基于元象自主研发的MotionGenGPT算法，将物理仿真、模仿学习、强化学习、矢量量化变分自编码器、Transformer模型等多种复杂算法进行创新性融合，无需人工设定或调整参数，可直接生成逼真流畅的复杂3D动作，并可应用到任意角色的骨架驱动。

强化学习+物理仿真：让动作自然逼真

使用动捕数据进行动作生成模型的训练是目前业界普遍采用的方法。但原始动捕数据通常会带有抖动和误差等问题，使其不够自然和符合物理规律。我们结合深度强化学习，通过在仿真环境中模仿人类动捕数据的模仿学习可以生成更自然的动作。由于使用动捕数据，该方法无需设计特定的目标函数，而是利用统一的模仿误差作为优化...

VQ-VAE：提取特征并复用

基于矢量量化变分自编码器（VQ-VAE）。近几项研究表明，VQ-VAE提供了一个有效且紧凑的动作表征，许多运动学中的动作生成模型已经证明了VQ-VAE这种离散但紧凑的隐空间表示适用于在大型数据集上训练，并可应用到各种下游任务中。受此启发，我们将VQ-VAE训练得来的动作表征和GPT结合起来，实现基于物理模拟的文本生成动作。

Transformer：文本与动作的高效连接

在文本生成动作的任务中，Transformer 结构发挥了关键作用。受序列模型近两年发展的启发，我们通过 Transformer 的注意力机制，在文本与动作表征之间建立了复杂而精准的联系。通过双 Transformer 设计，模型不仅生成了基础动作编码，还进一步细化了这些编码，捕捉到运动的微妙细节。这种多层次编码方式使生成的动作既符合物理规律，又展现出自然的流动性和多样性，极大提升了文本驱动动作生成的表现力。该设计使 MotionGenGPT 能够从文本中生成多样且高度逼真的...

引用

1.  Levi Fussell, Kevin Bergamin, and Daniel Holden. 2021. SuperTrack: Motion Tracking for Physically Simulated Characters Using Supervised Learning. ACM Transactions on Graphics 40, 6 (Dec. 2021), 197:1–197:13.

2.  Libin Liu, Michiel Van De Panne, and Kangkang Yin. 2016. Guided Learning of Control Graphs for Physics-Based Characters. ACM ransactions on Graphics 35, 3 (May 2016), 29:1–29:14.

3.  Xue Bin Peng, Pieter Abbeel, Sergey Levine, and Michiel van de Panne. 2018. DeepMimic: Example-Guided Deep Reinforcement Learning of Physics-Based Character Skills. ACM Transactions on Graphics 37, 4 (July 2018), 143:1–143:14.

4.  TingwuWang, Yunrong Guo, Maria Shugrina, and Sanja Fidler. 2020. UniCon: Universal Neural Controller For Physics-based Character Motion. CoRR abs/2011.15119 (2020). arXiv:2011.15119.

5.  Aaron van den Oord, Oriol Vinyals, and Koray Kavukcuoglu. 2017. Neural Discrete Representation Learning. In Proceedings of the 31st International Conference on Neural Information Processing Systems (Long Beach, California, USA) (NIPS’17). Curran Associates Inc., Red Hook, NY, USA, 6309–6318.
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。