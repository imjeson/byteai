---

title: '特斯拉Optimus人形机器人进厂打工，娴熟分装电池、自我矫正，还能走更远了'
date: 2024-05-08
author: ByteAILab

---

特斯拉人形机器人又解锁了新技能！

昨日，Tesla Optimus 官方发布了新的 demo 视频，展示了二代 Optimus 人形机器人的最新进展。

![图片](https://image.jiqizhixin.com/uploads/editor/af38d264-0a59-4bfc-8913-6f4b3285d602/640.png)

这次，Optimus 开始进厂打工了，在特斯拉电池工厂学会了分装电池，并且比以前走得更快更远更稳了。

---


让我们先一睹 Optimus 的最新技能和训练细节。

现在，Optimus 的端到端神经网络经过训练，能够对特斯拉工厂的电池单元进行准确分装。

![图片](https://image.jiqizhixin.com/uploads/editor/959607e3-77f6-4985-9b14-21a4fc4df46a/640.gif)
![图片](https://image.jiqizhixin.com/uploads/editor/9ffb8dc4-592c-4d0a-b1df-1339346968da/640.gif)

Optimus 在机器人的 FSD 计算机上实时运行，而仅仅依靠 2D 摄像头、手部触觉和力传感器。Optimus 利用它的腿保持平衡，同时网络驱动着整个上半身。

![图片](https://image.jiqizhixin.com/uploads/editor/a01c6d6e-8d99-44eb-8ff8-21d4db0b89fa/640.gif)

在插入过程中需要非常精确的动作，且容错率很低，神经网络会自动定位下一个空闲槽位。Optimus 还能从故障中自主恢复。

![图片](https://image.jiqizhixin.com/uploads/editor/d764f7d1-1456-4502-812d-3fbb603647db/640.gif)

Optimus 的训练数据是通过人类远程操作收集，并针对各种任务进行了扩展。

![图片](https://image.jiqizhixin.com/uploads/editor/5b0a9114-85ca-4360-a533-ed8ee7920553/640.gif)

Optimus 在工厂进行测试，人工干预率持续下降。

![图片](https://image.jiqizhixin.com/uploads/editor/db4d8bb2-178a-45b2-8c93-86e11f9b1f36/640.gif)

当然，Optimus 现在可以在定期绕着办公室行走，不仅走得更快，走的距离也越来越远了。

![图片](https://image.jiqizhixin.com/uploads/editor/34ec3a2f-3355-4490-95d7-6ccf91b7aeb7/640.gif)

对此，特斯拉 Optimus（Tesla Bot）工程师 Milan Kovac 对 Optimus 的更多训练细节进行了解读。

![图片](https://image.jiqizhixin.com/uploads/editor/5e9b2b6e-100f-4338-8f17-41d5a0b0a56d/640.png)

在过去的几个月里，特斯拉出色的制造团队制造出了更多的机器人，以便进行研究并收集人工智能数据。

团队训练并部署了一个神经网络，允许 Optimus 开始执行有用的任务，例如从传送带上捡起电池单元并将它们精确地插入托盘中。

Optimus 完全在机器人的嵌入式 FSD 计算机上运行，由板载电池供电。这样的设计使得单个神经网络可以通过添加更多样化的数据到训练过程中来执行多个任务。

虽然目前 Optimus 还不完美，速度还有点慢，但我们看到了越来越高的成功率和越来越少的失误。特斯拉还训练 Optimus 从失败案例中恢复，并看到了自发的校正发生。

特斯拉已经在一家工厂部署了几台 Optimus 人形机器人，它们每天都在真实的工作站上进行测试，并持续改进。

团队正在进行进一步的工作，以使 Optimus 移动更快，以及应对更恶劣的地形，同时不牺牲它的人性化特性。团队还将专注于可重复性、训练神经网络处理动态校准和机器人之间的微小差异。很快会有更多的更新。

此外，英伟达高级研究科学家、AI Agents 负责人 Jim Fan 对 Optimus 新视频展示出的技能给予了很高的评价。

![图片](https://image.jiqizhixin.com/uploads/editor/f811d390-e3c6-4fbc-9052-2f1c71255301/640.png)

他认为，视频让我们窥见了人类数据收集的真实场景，这是 Optimus 最大的优势。建立这样的流水线需要什么呢？Optimus 做到了以下几点：

Optimus 的手是世界上顶级五指灵巧型机器人手之一，它具有触觉感知，拥有 11 个自由度（DOF），相比之下许多竞品只有 6-7 个 DOF，并且具有强大的稳健性，能够在不需要持续维护的情况下承受大量的物体交互。

远程操作软件：我们可以看到人类操作员戴着 VR 眼镜和手套。设置软件以实现第一人称视频的实时传输和精确控制输出，同时保持极低延迟，这是非常了不起的。人类对于自己动作和机器人动作之间的最微小延迟都非常敏感。Optimus 有一个流畅的全身控制器，可以实时执行人类姿态。

大规模 fleet：你需要不止一个机器人来并行收集数据，需要训练有素的人类每天进行多次轮班（最好全天候），以及一个随叫随到的维护团队，以确保机器人始终处于忙碌状态。这是学术研究实验室甚至都不会考虑的大量操作复杂性。

任务与环境：弄清楚要远程操作什么也同样重要。目前，大多数此类工作都是由演示驱动的：收集你想要放入社交媒体视频中的任务数据。但想要解决通用型机器人的问题，我们需要仔细考虑任务和环境的分布。从视频的 43 秒到 51 秒部分，我们可以看到工厂和家居环境，如移动电池、处理洗衣物、将日常物品分类放入货架。

这是一个开放性的研究问题：如果你只有预算来收集 1000 个任务的训练数据，你会选择什么来最大化技能转移和泛化呢？

结论：远程操作是解决人形机器人问题的必要条件，但不足以充分解决问题。它从根本上来说无法扩展。

在评论区，马斯克预告了 Optimus 人形机器人手部的最新目标，在今年晚些时候将拥有 22 自由度（DoF）。这就更让人期待一波了。

![图片](https://image.jiqizhixin.com/uploads/editor/80ceb09b-ca22-48fa-9734-b8229185a0be/640.png)

此前，据马斯克在财报电话会议上透露，特斯拉 Optimus 人形机器人可能会在今年底拥有完成「有用的工厂任务」的能力，并计划今年底前在自家工厂率先使用。同时特斯拉有可能在 2025 年年底前对外销售 Optimus。

特斯拉人形机器人「进化史」

特斯拉人形机器人最早要追溯到 2021 年 8 月的「特斯拉 AI 日」活动上，当时马斯克首次透露了要造人形机器人（Tesla Bot）的设想。

这款人形机器人的身高大概是 1.72 米，重约 112 斤，身材匀称，还带有一张面部屏幕，能够以约 8 公里 / 小时的速度移动。

![图片](https://image.jiqizhixin.com/uploads/editor/e0fa0653-8960-4068-844f-767b949ce945/640.png)

2022 年 10 月，这一年的「特斯拉 AI 日」上，Optimus 人形机器人首次亮相。彼时，它还不能做跳舞等花样表演。机器人工作时的功耗是 500W，重量达到 73 公斤，手运动的自由度有 27 个。

![图片](https://image.jiqizhixin.com/uploads/editor/2e0b415d-3b54-4819-a0a5-3ab716d58c74/640.gif)

不过，在 Demo 演示中，Optimus 展示了其搬箱子、浇花、在特斯拉超级工厂工作的画面。

![图片](https://image.jiqizhixin.com/uploads/editor/0ac2f9c5-ff7c-4a3b-8b03-7bf829f315f9/640.gif)

2023 年 5 月，经过半年多的蛰伏，特斯拉 Optimus 终于具备了流畅行走和抓取物体的能力。

![图片](https://image.jiqizhixin.com/uploads/editor/8b9ea6df-003e-4d6f-8349-234034b05c9f/640.gif)

2023 年 9 月，特斯拉 Optimus 再次进化，可以自主对物体进行分类了，亮点在于神经网络完全端到端训练：输入视频、输出控制。闲暇之余，它还能做瑜伽消遣。

![图片](https://image.jiqizhixin.com/uploads/editor/73153fa2-edcd-4dfa-a8b6-60b171aedb20/640.gif)
![图片](https://image.jiqizhixin.com/uploads/editor/d216828c-46ca-4b6c-80b9-7cd26ddfbacf/640.gif)

2023 年 12 月，Optimus 二代到来，让人的确看到了电影《机械公敌》里的样子了。

![图片](https://image.jiqizhixin.com/uploads/editor/83311271-6c2a-4b4f-ae8d-826c7028210e/640.gif)

随着新视频的发布，特斯拉人形机器人的进步速度再次令人惊叹。

![图片](https://image.jiqizhixin.com/uploads/editor/9a8b7692-fc08-4ced-8554-cffa714cb4e0/640.png) 

---
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。