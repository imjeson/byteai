---
title: '字节大模型团队Depth Anything V2模型入选苹果最新CoreML模型'
date: 2024-06-30
author: ByteAILab

---

近日，苹果公司在HuggingFace上发布了20个新的Core ML模型和4个数据集，字节大模型团队的单目深度估计模型 Depth Anything V2入选其中。 ![Image](https://image.jiqizhixin.com/uploads/editor/74961f6f-9700-4870-8128-c1aff7ceafe1/1719564121019.png)

CoreML是苹果公司的机器学习框架，将机器学习模型集成到iOS，MacOS等设备上高效运行，可在无需互联网连接的情况下执行复杂的AI任务，从而增强用户隐私并减少延迟。

---
苹果开发者可以利用这些模型更容易地构建智能、安全的AI应用。

Depth Anything V2为字节大模型团队开发的单目深度估计模型。相比上一代版本，V2版在细节处理上更精细，鲁棒性更强，并且和基于diffusion的SOTA模型相比，速度上有显著提升。此外，V2版包括从25M到1.3B参数的不同大小的模型，本次苹果收录的CoreML版本经过HuggingFace官方的工程优化，采用最小的25M模型，在iPhone 12 Pro Max上的推理速度达到了31.1毫秒。该模型可以应用在自动驾驶、3D建模、增强现实、安全监控以及空间计算等领域。值得一提的是，Depth Anything 两个版本，论文一作均为该团队一位实习同学。

本次苹果公司新发布的CoreML模型涵盖了从自然语言处理到图像识别的多个领域，开发者可使用coremltools 软件包将TensorFlow等框架训练的模型转换为Core ML格式。 通过利用 CPU、GPU 和神经引擎优化设备上的性能，Core ML可最大限度地减少内存占用和功耗。 ![Image](https://image.jiqizhixin.com/uploads/editor/b57ca6d3-848a-4a8d-bb6c-3472dc20bc73/1719564121048.png)

---
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。