---
title: '波士顿动力技术揭秘：后空翻、俯卧撑与翻车，6年经验、教训总结'
date: 2024-08-20
author: ByteAILab

---

# 波士顿动力技术揭秘：后空翻、俯卧撑与翻车，6年经验、教训总结

为什么波士顿动力的人形机器人能完成跑酷、后空翻等高难度动作？为什么有时候它会翻车？工程师从中总结的经验、教训都在这里了。

今年 4 月，著名机器人公司波士顿动力跟全世界开了一个玩笑，先是官宣人形机器人 Atlas 退役，狠狠来了一波回忆杀。

---


![退役的 Atlas](https://mmbiz.qpic.cn/sz_mmbiz_gif/KmXPKA19gWicU8A7GYxHmSuUDrYzIbBkzhviaiccXkYZnuso27m1JzC0icACIwhN9aInHwhwI8ZJk5nvGMia1KdKS3Q/640?wx_fmt=gif&from=appmsg)

紧接着，就在第二天，他们又放出了一个新的人形机器人视频。新机器人也叫 Atlas，不过由原来的液压改为了电动，身材更为小巧、灵活。

![图片](https://mmbiz.qpic.cn/sz_mmbiz_gif/KmXPKA19gWicU8A7GYxHmSuUDrYzIbBkzz1ck6RBPWnEDfCg8BribzVz3hL4oVlgzjF3Woibic46B4MCIJKicOHs63Q/640?wx_fmt=gif&from=appmsg)

此时，外界才反应过来，原来波士顿动力并不是要放弃人形机器人，而是转变了研发方向，让机器人更加适应工业环境。该公司表示，这个电动版的 Atlas 将于明年初在韩国现代汽车工厂里开始进行试点测试，并会在几年后全面投产。

自公布后，这个机器人鲜少露面。直到最近，在机器人顶会 RSS 的一场技术分享上，大家才知道，原来新的 Atlas 已经进化到可以做俯卧撑、倒立行走的地步了。

![图片](https://mmbiz.qpic.cn/sz_mmbiz_gif/KmXPKA19gWicU8A7GYxHmSuUDrYzIbBkz0M3LvlMGicsz45dqmpuRkjUTqAyRJPibRibwflBZcB57YvyGiapkcj1UGQ/640?wx_fmt=gif&from=appmsg)

![图片](https://mmbiz.qpic.cn/sz_mmbiz_gif/KmXPKA19gWicU8A7GYxHmSuUDrYzIbBkzDdy0SBZQjEGNh5gRiaYibX0cgPEXgMUA2XXGXsVtvPvfjQzF4JibHru0g/640?wx_fmt=gif&from=appmsg)

这个技术分享来自波士顿动力机器人工程师 Robin Deits。他是 MIT 博士，2018 年至今一直在波士顿动力工作，研究 Atlas 人形机器人的控制。

个人主页：http://robindeits.com

在分享中，他介绍了 Atlas 机器人过去几年的研发历程，以及从中学到的经验、教训，对机器人行业从业者可能很有启发。机器之心将在这篇文章中进行系统梳理。

视频链接：https://www.youtube.com/watch?v=aQi6QxMKxQM

**Atlas 控制器的核心 ——MPC**

在演讲开头，Robin Deits 首先介绍了波士顿动力这家公司。

波士顿动力现在是韩国现代汽车公司旗下的人形机器人公司，员工大概有八九百人，其代表性的机器人有 Spot（机器狗）、Stretch（仓库搬运机器人）和 Atlas（人形机器人）。目前，Atlas 主要还是一个研发平台，波士顿动力正慢慢将其转化为产品。

接下来，Robin Deits 介绍了他们如何将 MPC 用于 Atlas，包括怎么用、遇到了哪些挑战、还有哪些问题没有解决等。

MPC 指的是 Model Predictive Control（模型预测控制），这是一种高级控制策略，通过使用数学模型来预测系统在未来一段时间内的行为，然后优化控制输入，以实现系统性能的最佳化。MPC 的一个关键优势是它能够处理多变量系统，并且可以显式地考虑约束条件（例如输入和状态的限制）。在机器人领域，MPC 通常用于路径规划、运动控制、姿态控制等任务中，因为它能在动态和复杂的环境下提供鲁棒的控制解决方案。

Deits 表示，他们从 2019 年以来实现的所有机器人动作都是依靠 MPC 来完成的，包括跑酷、体操、跳舞、后空翻等等。最近，他们还展示了 MPC 用于操纵物体的效果。2024 款纯电驱动的 Atlas 新版本也是由 MPC 驱动的。

所有版本 Atlas 的 MPC 都有一些共同特点，包括：

1、非线性动力学、成本和约束

Deits 指出，所有 MPC 版本从一开始就包含非线性动力学，非线性无处不在，特别是接触点的位置与接触点施加力的大小之间的耦合...

2、迭代线性化并求解 QP

他们通过迭代地线性化来解决这个问题...

3、从不运行到收敛

他们对收敛不感兴趣，因为 Deits 认为收敛并不能很好地预测机器人是否真的有效...

4、利用问题结构提高速度

他们做了很多工作，利用问题结构来提高速度...

5、不将求解器视为黑盒

他们尝试打开求解器，重写其内部，以提高性能...

自进入波士顿动力以来，Deits 所在的团队已经在机器人（硬件）上解决了大约 1000 万个 QP 问题，在模拟环境中则解决了 100 亿个。但这些还远远不够。

另外，他们采用了类似的耦合方法，将机器人和物体的状态放到一个 MPC 问题中去解决，使得 Atlas 能够做到扔工具包、搬运木板、操纵较重物体等动作。

但是，一旦「土豆」想做一些四肢做不到的事情（「土豆」以为能跳到那么远，而四肢其实不能），Atlas 就会贡献翻车片段。二者之间不够协调。

所以，从这时起，波士顿动力调整策略，开始将 Atlas 视为一个运动学 - 重心动力学耦合的系统（a Kinodynamic System）。这个系统可以让 Atlas 完成 540 度的转体空翻...

......

[原文链接](https://mp.weixin.qq.com/s/nTH0sTzFY72ijYx1vVJkFw)

---

。注意：Title、Date、Body 三个部分的内容，放入到对应的位置。最后只需要按照格式标准输出为Makedown源文件格式内容。
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。