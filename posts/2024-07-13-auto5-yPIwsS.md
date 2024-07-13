---
title: '英伟达又赚到了！FlashAttention3来了：H100利用率飙升至75%'
date: 2024-07-14
author: ByteAILab

---

740 TFLOPS！迄今最强 FlashAttention 来了。

随着大型语言模型（LLM）加速落地，扩展模型上下文窗口变得越来越重要。

---
然而，Transformer 架构的核心 —— 注意力层的时间复杂度和空间复杂度与输入序列长度的平方成正比。这使得扩展模型上下文窗口存在挑战。

2022 年，一种快速、内存高效的注意力算法 ——FlashAttention 问世，该算法无需任何近似即可加速注意力并减少内存占用。

FlashAttention 对注意力计算进行重新排序的算法，并利用 tiling 和重计算来显著加快计算速度，将内存使用量从序列长度的二次减少到线性。

2023 年，研究团队宣布推出 FlashAttention-2，在算法、并行化和工作分区等方面有了显著改进。

现在，来自 Meta、英伟达、Together AI 等机构的研究者宣布推出 FlashAttention-3，它采用了加速 Hopper GPU 注意力的三种主要技术：

- 通过 warp-specialization 重叠整体计算和数据移动；
- 交错分块 matmul 和 softmax 运算；
- 利用硬件支持 FP8 低精度的不连贯处理。

FlashAttention-3 的速度是 FlashAttention-2 的 1.5-2.0 倍，高达 740 TFLOPS，即 H100 理论最大 FLOPS 利用率为 75%。使用 FP8，FlashAttention-3 的速度更是接近 1.2 PFLOPS。

FlashAttention-3 的改进将带来：

- 更高效的 GPU 利用率：H100 理论最大 FLOPS 利用率为 75%，而之前仅为 35%。这使得 LLM 的训练和运行速度比以前的版本快得多。
- 较低精度下更好的性能：FlashAttention-3 可以在保持精度的同时使用较低精度的数字 (FP8)。这可以实现更快的处理速度并可能降低内存使用量，从而为运行大规模人工智能操作的客户节省成本并提高效率。
- 能够在 LLM 中使用更长的上下文：通过加速注意力机制，FlashAttention-3 使 AI 模型能够更有效地处理更长的文本片段。这使得应用程序能够理解并生成更长、更复杂的内容而不会减慢速度。

论文标题：FlashAttention-3: Fast and Accurate Attention with Asynchrony and Low-precision
论文地址：[https://tridao.me/publications/flash3/flash3.pdf](https://tridao.me/publications/flash3/flash3.pdf)
论文作者之一、FlashAttention1-3 版本的参与者 Tri Dao 表示：FlashAttention 被广泛用于加速 Transformers，已经使注意力速度提高了 4-8 倍，但尚未利用现代 GPU。因而他们发布了 FlashAttention-3：在 FP16 上速度提高了 1.5-2 倍，在 H100 上高达 740 TFLOPS（75% 实用性），FP8 接近 1.2 PFLOPS！

Hopper GPU 硬件特性：WGMMA、TMA、FP8

...

扩展阅读：

- [斯坦福提出新型Attention算法！提速2-4倍，BERT单节点训练最快](http://mp.weixin.qq.com/s?__biz=MzA3MzI4MjgzMw==&mid=2650848429&idx=4&sn=4665869919c379023b1bdb29568cdb2c&chksm=84e578d3b392f1c59b3e4c9b986a522f6534e894800e12f5df52964d1ec45f6c067a73b53bd9&scene=21#wechat_redirect)
- [比标准Attention提速5-9倍，大模型都在用的FlashAttention v2来了](http://mp.weixin.qq.com/s?__biz=MzA3MzI4MjgzMw==&mid=2650884509&idx=3&sn=65476dbc71ca235155734ed6cf52197d&chksm=84e48de3b39304f54bc222ce6da480ef5ddd8874b5254697eecf1583aef635eb916818901dab&scene=21#wechat_redirect)

参考链接：
- [https://tridao.me/blog/2024/flash3/](https://tridao.me/blog/2024/flash3/)

---
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。