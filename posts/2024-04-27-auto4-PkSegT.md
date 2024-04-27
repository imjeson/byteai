---
title: 'Open-Sora全面开源升级：支持16s视频生成和720p分辨率'
date: 2024-04-28
author: ByteAILab

---

Open-Sora 在开源社区悄悄更新了，现在单镜头支持长达16秒的视频生成，分辨率最高可达720p，并且可以处理任何宽高比的文本到图像、文本到视频、图像到视频、视频到视频和无限长视频的生成需求。我们来试试效果。

---


生成个横屏圣诞雪景，发b站

![横屏圣诞雪景](http://www.jesonc.com/Fqs-QgFfzbwJ6d5SzB0cMqu6wdBI)

再生成个竖屏，发抖音

![竖屏](http://www.jesonc.com/Fkxt1ytUb28AWqX2DV7cEa5_7HtM)

还能生成单镜头16秒的长视频，这下人人都能过把编剧瘾了

![长视频](http://www.jesonc.com/upload/3B33CB85B496C0CB6FBA4C2BD79320AD/1714095277223/FtWVFOiST_li02iCgxO3tIVNO0Qs.gif)

怎么玩？指路

`GitHub：https://github.com/hpcaitech/Open-Sora`

更酷的是，Open-Sora 依旧全部开源，包含**最新的模型架构、最新的模型权重、多时间/分辨率/长宽比/帧率的训练流程、数据收集和预处理的完整流程、所有的训练细节、demo示例**和**详尽的上手教程**。

**Open-Sora 技术报告全面解读**

**最新功能概览**
作者团队在GitHub上正式发布了Open-Sora 技术报告，根据笔者的了解，本次更新主要包括以下几项关键特性：
- 支持长视频生成；
- 视频生成分辨率最高可达720p；
- 单模型支持任何宽高比，不同分辨率和时长的文本到图像、文本到视频、图像到视频、视频到视频和无限长视频的生成需求；
- 提出了更稳定的模型架构设计，支持多时间/分辨率/长宽比/帧率训练；
- 开源了最新的自动数据处理全流程。

**时空扩散模型ST-DiT-2**
作者团队表示，他们对Open-Sora 1.0中的STDiT架构进行了关键性改进，旨在提高模型的训练稳定性和整体性能。...

[完整文章链接](https://www.aixinzhijie.com/article/6845560)
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。