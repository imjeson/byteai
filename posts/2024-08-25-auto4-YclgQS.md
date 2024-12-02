---
title: '一家芯片公司，猛追英伟达'
date: 2024-08-26
author: ByteAILab

---

文章来源：[半导体行业观察](https://mp.weixin.qq.com/s/gd7PPipYTOQhbUbpu0eKjg)  
来源：内容编译自nextplatform。

![图片来源：由GPTNB生成](http://www.jesonc.com/upload/3B33CB85B496C0CB6FBA4C2BD79320AD/1724381690737/FmIHacsesLBrm7cjEzqOXnQpgr1e.png)

当前的 AI 训练和一些 AI 推理集群有两个网络。

---
后端网络将计算引擎组（通常是 GPU 加速器，通常是 Nvidia 的加速器）相互连接，以便它们可以共享工作和数据。前端网络将计算引擎的 CPU 主机相互连接、连接到存储以及连接到外部世界。InfiniBand 已逐渐成为后端网络的主导，而以太网则倾向于用于前端网络。Arista Networks 和 Cisco Systems 等公司也希望在升级前端网络的同时，在后端占有一席之地。思科在其最近的财务报告中表示，其 Silicon One ASIC 在后端 AI 集群网络试验中得到了一定程度的应用，但...

...Arista 拥有雄厚的财力，可以在 AI 网络领域与思科和 Nvidia 的 Spectrum-X 以及 Quantum InfiniBand 一较高下，我们完全预料到这将会是一场激烈的竞争。正如我们之前报道的那样，我们认为，在 xAI 决定不在 Oracle Cloud Infrastructure 云上使用租用的 GPU 容量之后，Nvidia 已经通过其 Spectrum-X 以太网获得了该 xAI 集群 100,000 个 Nvidia H100 GPU 集群的后端网络。...

...Arista 表示，单层 Etherlink 拓扑可以支持超过 10,000 个 XPU，而双层拓扑可以在单个结构中支持超过 100,000 个 XPU。当未来有兼容 UEC 的 DPU 可用时，Arista 表示它将支持这些 DPU，因为它们可以卸载交换机和集群主机节点上的拥塞控制和自适应路由功能，以提高网络性能——就像 Nvidia 已经对 Spectrum-X 所做的那样。7800R4-AI 和 7700R4 DES 交换机自 6 月发布以来一直在进行客户测试，预计将在今年下半年上市。但是，正如 Ullal...

如果 Arista 收购 DPU 制造商或从头开始创建自己的 DPU，请不要感到惊讶。

与此同时，Arista 可以与潜在的 AI 客户合作，升级他们的前端网络，为 AI 做好准备，就像思科所做的那样。

参考链接：  
[https://www.nextplatform.com/2024/08/21/arista-banks-on-the-ai-network-double-whammy/](https://www.nextplatform.com/2024/08/21/arista-banks-on-the-ai-network-double-whammy/)
---
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。