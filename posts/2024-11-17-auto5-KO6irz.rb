```
---

title: '率先解决多类数据同时受损，中科大MIRA团队TRACER入选NeurIPS 2024：强鲁棒性的离线变分贝叶斯强化学习'
date: 2024-11-18
author: ByteAILab

---

AIxiv专栏是机器之心发布学术、技术内容的栏目。过去数年，机器之心AIxiv专栏接收报道了2000多篇内容，覆盖全球各大高校与企业的顶级实验室，有效促进了学术交流与传播。

---
如果您有优秀的工作想要分享，欢迎投稿或者联系报道。投稿邮箱：liyazhou@jiqizhixin.com；zhaoyunfeng@jiqizhixin.com。

本论文作者杨睿是中国科学技术大学 2019 级硕博连读生，师从王杰教授、李斌教授，主要研究方向为强化学习、自动驾驶等。他曾以第一作者在 NeurIPS、KDD 等顶级期刊与会议上发表论文两篇，曾获滴滴精英实习生（16/1000+）。

近日，中科大王杰教授团队 (MIRA Lab) 针对离线强化学习数据集存在多类数据损坏这一复杂的实际问题，提出了一种鲁棒的变分贝叶斯推断方法，有效地提升了智能决策模型的鲁棒性，为机器人控制、自动驾驶等领域的鲁棒学习奠定了重要基础。论文发表在 CCF-A 类人工智能顶级会议 Neural Information Processing Systems（NeurIPS 2024）。

图片链接：[图片](https://mmbiz.qpic.cn/sz_mmbiz_png/KmXPKA19gWiclXRqSZAK5SHAYtn0icaeymSCoRW7Y0jMXAwd9AfMqibr6DKWYUMdw4KAibfWHcNAP6US5EP5pMdD8w/640?wx_fmt=png&from=appmsg)

- 论文地址：[https://arxiv.org/abs/2411.00465](https://arxiv.org/abs/2411.00465)
- 代码地址：[https://github.com/MIRALab-USTC/RL-TRACER](https://github.com/MIRALab-USTC/RL-TRACER)

**引言**

在机器人控制领域，离线强化学习正逐渐成为提升智能体决策和控制能力的关键技术。然而，在实际应用中，离线数据集常常由于传感器故障、恶意攻击等原因而遭受不同程度的损坏。这些损坏可能表现为随机噪声、对抗攻击或其他形式的数据扰动，影响数据集中的状态、动作、奖励和转移动态等关键元素。经典离线强化学习算法往往假设数据集是干净、完好无损的，因此在面对数据损坏时，机器学习到的策略通常趋向于损坏数据中的策略，进而导致机器在干净环境下的部署时性能显著下降。

...
```
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。