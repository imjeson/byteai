---
title: '以「垂直模型」引领AIGC商业化落地，FancyTech的技术路径是什么？'
date: 2024-08-18
author: ByteAILab
---

我们正在见证又一轮技术革新，这一次是 AIGC 为个体提供表达自我的工具，让创作变得更加容易和普及，但背后的推动力却并不是「大」模型。

两年以来，AIGC 技术的发展速度超过所有人的想象，席卷了从文本、图像到视频的各个领域。

---
关于 AIGC 商业化路径的讨论从来没有停止过，其中，有共识也有路线分化。

一方面，通用模型的强大能力令人惊叹，在各行各业展示出应用潜力。特别是 DiT、VAR 等架构的提出，让 Scaling Law 实现了从文本到视觉生成领域的跨越。在这一法则的指引下，很多大模型厂商朝着增加训练数据、算力投入和堆积参数的方向持续前进。

另一方面，我们也看到，通用模型并不意味着「通杀」，面对很多细分赛道的任务，一个「训练有素」的垂直模型反而能够取得更好的效果。

随着大模型技术进入落地加速期，后一种商业化路径获得的关注快速增长。

这个演进过程中，一家来自中国的创业公司 FancyTech 脱颖而出：**它以面向商业类视觉内容生成的标准化产品快速拓展市场，比同行们更早一步验证了「垂直模型」在产业落地层面的优越性。**

环顾国内大模型创业圈，FancyTech 的商业化战绩是有目共睹的。但较少为人所知的是，这家诞生仅几年的公司，凭借怎样的垂直模型和技术优势跑在了赛道前列。

在一次专访中，机器之心和 FancyTech 聊了聊他们正在做的技术探索。

**FancyTech 发布视频垂直模型 DeepVideo**

**如何突破行业壁垒？**

一般来说，在通用模型的零样本泛化能力达到某个水准后，在其之上做微调就可用于下游任务。这也是当下很多大模型产品落地的打法。但从实际效果来看，仅仅是「微调」还不能满足产业应用需求，因为各个行业的内容生成任务都有自己的特定而复杂的一套标准。

通用模型或许能完成好 70% 的常规任务，但客户真正需要的是能 100% 满足需求的「垂直模型」。以商业视觉设计为例，以往的相关工作均由有长期积累的专业人士...

![图片](https://mmbiz.qpic.cn/sz_mmbiz_png/KmXPKA19gWibqZEFvAY4Hc6jFRjmS7AXx3sJ8QuNxLGnAJIeDabkMcLVwZC7V44fBbF3pV1kRONoic9eUxOVAK9w/640?wx_fmt=png&from=appmsg)

![图片](https://mmbiz.qpic.cn/sz_mmbiz_png/KmXPKA19gWibqZEFvAY4Hc6jFRjmS7AXxYa2dRdM6WssDcy5ZITG4iancOlEyZEGxF4S65tdTibdw8Kj8ibOkibzWww/640?wx_fmt=png&from=appmsg)

![图片](https://mmbiz.qpic.cn/sz_mmbiz_png/KmXPKA19gWibqZEFvAY4Hc6jFRjmS7AXx6fAibr0uBV38JYTNesLgqOo54eMyfOTZsSfaia0wbKO1L0Kt3pNuwMNQ/640?wx_fmt=png&from=appmsg)

![图片](https://mmbiz.qpic.cn/sz_mmbiz_png/KmXPKA19gWibqZEFvAY4Hc6jFRjmS7AXx89TzCSkqhuPoLfzCdpxCmhJt67st9zGJA7B2ehWMMfibvnT7KkVm44w/640?wx_fmt=png&from=appmsg)

![图片](https://mmbiz.qpic.cn/sz_mmbiz_png/KmXPKA19gWibqZEFvAY4Hc6jFRjmS7AXxp6UougjZicanTQlMnXQ8wryom7nACXgS0TuNj7ee65jNP9olficswicdA/640?wx_fmt=png&from=appmsg)

**真・降维打击：「空间智能」如何指导 2D 内容生成？**

很多视觉生成类产品的效果之所以不尽如人意，核心原因就在于目前的图像和视频生成模型往往基于 2D 训练数据进行学习，并没有理解真正的物理世界。

这一点在领域内已形成共识，部分研究者甚至认为，在自回归学习范式下，模型对世界的理解始终处于浅层。

但在商业视觉生成这项细分任务上，要想增强模型 3D 物理世界的...

**「强还原」和「超融合」背后，有哪些算法创新？**

面向常见的商品场景图像生成任务，现阶段的主流方法主要用贴图的方式保证商品部分的还原度，然后基于 Inpainting 技术实现图片场景的编辑。用户选定需要改动的区域，输入 Prompt 或者提供参考图像，以引导商品场景生成。这种方法的融合效果较好...

![图片](https://mmbiz.qpic.cn/sz_mmbiz_png/KmXPKA19gWibqZEFvAY4Hc6jFRjmS7AXxuupuQOE1H9CsrXaJPa7f7C5Kd3xJrfmeGs9FGLGlcqZx2mgvD3GYNA/640?wx_fmt=png&from=appmsg)

**让 AIGC 时代的红利**

**从垂直模型开始走向更多普通人**

无论是「通用」还是「垂直」，两条路线的终点都是商业化问题。

FancyTech 垂直模型落地最直接的受益者是品牌方，以往，从策划、拍摄、剪辑，一段广告视频的制作周期可能长达几个星期。但在 AIGC 时代，创作这样一段广告视频只需要十几分钟而已，成本甚至也只需要原来的五分之一。

凭借着海量独有数据和行业 Know-how 的优势，FancyTech 通过垂直模型的优势赢得国内外广泛的认可，与韩国合作伙伴携手签约了三星和 LG；与东南亚的知名电商平台 Lazada 开启合作；在美国，受到了 Kate Sommerville 和 Solawave 等本土品牌的青睐；在欧洲，荣获了 LVMH 创新大奖，并与欧洲客户深入合作中。

在核心的垂直模型之外，FancyTech 还提供了 AI 短视频全链路自动发布和数据反馈的能力，驱动商品销售持续增长。

更重要的一点是，**垂直模型让普通大众利用 AIGC 技术提高生产力的路径具像化了。**比如，一个街边传统照相馆在不增加专业设备和专业人员的情况下，借助 FancyTech 的产品，即可完成从简单人像拍摄到专业...

![图片](https://mmbiz.qpic.cn/sz_mmbiz_png/KmXPKA19gWibqZEFvAY4Hc6jFRjmS7AX154Gn1WyugxgmibtlbcaNMGRq8WXLFmjUqqKXFN5PFicKsPfc4O7krawQ/640?wx_fmt=png&from=appmsg)

现在只要拿起手机，几乎每个人都能拍视频、录音乐，并与全世界分享他们的创作。想象一个 AIGC 再一次释放个人创造力的未来 ——

让普通人跨越专业门槛，更轻松地将创意化为现实，从而让每个行业的生产力实现飞跃，并产生更多的新兴产业，AIGC 技术带来的时代红利，从这一刻起开始真正走向普通人。
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。