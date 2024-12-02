```
---

title: '自动驾驶界秋名山车神！CoRL杰出论文让自驾车学会漂移，机器人整出新活'
date: 2024-11-12
author: ByteAILab

---

今年的机器人顶会 CoRL 杰出论文，竟然帮自动驾驶车稳稳地完成了漂移。

先来个甜甜圈漂移热个身：然后，上点难度，来个「8 字」：最后来个蛇形绕桩（Slalom，这次没有实体的桩）。

---
可以听见，在绕到一半的时候，工作人员忍不住欢呼了一下。即使地面湿滑，自动驾驶汽车的发挥也不受影响。这些动作都是由一个安装了自动驾驶系统的雷克萨斯 LC 500 汽车来完成的，同样一套系统安装到丰田 Supra 上也可以安全运行。这得益于研究者们在 CoRL 一篇杰出论文中提出的方法，该方法可以提高自动驾驶在极限操控（如漂移）条件下的安全性和可靠性。

另外一篇获奖论文则有关机器人导航。作者借助强化学习对导航智能体进行了端到端大规模训练，结果可以很好地泛化到现实世界。其中，论文一作 Kuo-Hao Zeng 是一位华人学者，目前就职于艾伦人工智能研究院。他本科毕业于中山大学，在清华大学拿到了硕士学位，去年在美国华盛顿大学拿到了博士学位。

在颁奖典礼现场，获奖者拿到了一个神秘的大盒子。据透露，里面装的是看起来很美味的零食：

CoRL 是面向机器人学习研究的会议，涵盖机器人学、机器学习和控制等多个主题，包括理论与应用。自 2017 年首次举办以来，CoRL 已经成为了机器人学与机器学习交叉领域的全球顶级学术会议之一。

除了两篇杰出论文，还有四篇论文拿到了今年的杰出论文提名，比如只需要学习 5 分钟人类演示，就能轻松泛化到新的物体和场景的机器人策略 EquiBot、ALOHA 团队主要成员的新工作 —— 人形机器人 HumanPlus，斯坦福提出的首个开源视觉语言动作大模型 OpenVLA 等。

以下是关于获奖论文和提名论文的详细介绍。

---

**杰出论文奖获奖论文**

---

**论文一：One Model to Drift Them All**

作者：Franck Djeumou, Thomas Jonathan Lew, Nan Ding, Michael Thompson, Makoto Suminaka, Marcus Greiff, John Subosits

机构：丰田研究院、美国伦斯勒理工学院

论文链接：https://openreview.net/pdf?id=0gDbaEtVrd

让自动驾驶汽车在极限操控状态下 —— 也就是轮胎抓地力达到最大时 —— 安全运行是一个非常重要的问题，尤其是在紧急避障或恶劣天气等情况下。不过，要实现这样的能力并不容易，因为这项任务本身变化多端，而且对道路、车辆特性以及它们之间的相互作用的不确定性非常敏感。

为了克服这些难题，作者提出了一个新的方案：利用一个包含多种车辆在多样环境下行驶轨迹的未标记数据集，来训练一个高性能车辆控制的条件扩散模型。他们设计的这个扩散模型能够通过一个基于物理信息的数据驱动动态模型的参数多模态分布，来捕捉复杂数据集中的轨迹分布。

通过将在线测量数据作为生成过程的条件，作者将这个扩散模型融入到实时模型预测控制框架中，用于极限驾驶。

在丰田 Supra 和雷克萨斯 LC 500 上进行的大量实验表明，在不同路况下使用不同轮胎时，单一扩散模型可使两辆车实现可靠的自动漂移。该模型与特定任务专家模型的性能相匹配，同时在对未知条件的泛化方面优于专家模型，为在极限操控条件下采用通用、可靠的自动驾驶方法铺平了道路。

**论文二：PoliFormer: Scaling On-Policy RL with Transformers Results in Masterful Navigators**

作者：Kuo-Hao Zeng, Kiana Ehsani, Rose Hendrix, Jordi Salvador, Zichen Zhang, Alvaro Herrasti, Ross Girshick, Aniruddha Kembhavi, Luca Weihs

机构：艾伦人工智能研究所 PRIOR（Perceptual Reasoning and Interaction Research）团队

项目链接：https://poliformer.allen.ai/

论文链接：https://arxiv.org/pdf/2406.20083

PoliFormer 是 Policy Transformer 的缩写。这是一种纯 RGB 室内导航智能体，它通过强化学习进行端到端大规模训练。尽管纯粹是在模拟中训练，...

（图片链接需保留，请查阅完整内容）

```
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。