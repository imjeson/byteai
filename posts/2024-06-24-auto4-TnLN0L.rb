---
title: '打破CUDA的垄断'
date: 2024-06-25
author: ByteAILab

---

随着人工智能不断渗透到生活的各个领域，这些工具将运行在哪种软件上仍然是一个问题。软件堆栈（或协同工作以在计算系统上实现特定功能的软件组件集合）的选择在以 GPU 为中心的人工智能任务计算需求中变得越来越重要。

---
 

随着 AI 和 HPC 应用不断突破计算能力的极限，软件堆栈的选择会显著影响性能、效率和开发人员的生产力。 目前，软件堆栈竞争中有三个主要参与者：Nvidia 的计算统一设备架构 (CUDA)、英特尔的 oneAPI 和 AMD 的 Radeon Open Compute (ROCm)。虽然它们各有优缺点，但 Nvidia 的 CUDA 继续占据主导地位，主要是因为其硬件在 HPC 和现在的 AI 领域处于领先地位。 

在这里，我们将深入研究每个软件堆栈的复杂性——探索它们的功能、硬件支持以及与流行的 AI 框架 PyTorch 的集成。此外，我们将最后快速了解两种高级 HPC 语言：Chapel 和 Julia。

### Nvidia 的 CUDA
Nvidia 的 CUDA 是该公司专有的并行计算平台和软件堆栈，用于在其 GPU 上进行通用计算。CUDA 提供了一个应用程序编程接口 (API)，使软件能够利用 Nvidia GPU 的并行处理能力来加速计算。

首先必须提到 CUDA，因为它在 AI 和 GPU 密集型 HPC 任务的软件堆栈领域占据主导地位，这是有充分理由的。CUDA 自 2006 年就已存在，这使其拥有悠久的第三方支持历史和成熟的生态系统。许多库、框架和其他工具都专门针对 CUDA 和 Nvidia GPU 进行了优化。对 CUDA 堆栈的长期支持是其相对于其他堆栈的主要优势之一。

Nvidia 提供了一套全面的工具集作为 CUDA 平台的一部分，包括 CUDA 编译器，如Nvidia CUDA Compiler (NVCC)。还有许多用于调试和优化 CUDA 应用程序的调试器和分析器以及用于分发 CUDA 应用程序的开发工具。此外，CUDA 的悠久历史催生了大量的文档、教程和社区资源。

在讨论 AI 任务时，CUDA 对 PyTorch 框架的支持也至关重要。该软件包是一个基于 Torch 库的开源机器学习库，主要用于计算机视觉和自然语言处理中的应用。PyTorch 对 CUDA 提供了广泛且完善的支持。PyTorch 中的 CUDA 集成经过高度优化，可在 Nvidia GPU 上进行高效的训练和推理。同样，CUDA 的成熟意味着可以访问 PyTorch 可以使用的众多库和工具。

除了大量加速库之外，Nvidia 还为 AI 研究人员和软件开发人员提供了完整的深度学习软件堆栈。该堆栈包括流行的 CUDA 深度神经网络库 (cuDNN)，这是一个 GPU 加速的度神经网络基元库。CuDNN 可加速广泛使用的深度学习框架，包括 Caffe2 、Chainer 、Keras 、MATLAB 、MxNet 、PaddlePaddle 、PyTorch和TensorFlow。

更重要的是，CUDA 旨在与所有 Nvidia GPU 配合使用，从消费级 GeForce 显卡到高端数据中心 GPU，为用户提供可使用硬件的广泛多功能性。

尽管如此，CUDA 仍有改进空间，而 Nvidia 的软件堆栈也存在一些用户必须考虑的缺点。首先，尽管 CUDA 可以免费使用，但它是 Nvidia 拥有的专有技术，因此不是开源的。这种情况将开发人员锁定在 Nvidia 的生态系统和硬件中，因为在 CUDA 上开发的应用程序无法在非 Nvidia GPU 上运行，除非进行重大代码更改或使用兼容层。同样，CUDA 的专有性质意味着软件堆栈的开发路线图完全由 Nvidia 控制。开发人员对 CUDA 代码库的贡献或修改能力有限。

开发人员还必须考虑 CUDA 的许可成本。CUDA 本身对于非商业用途是免费的，但商业应用可能需要购买昂贵的 Nvidia 硬件和软件许可证。

...
...
...
更多内容详见原文链接：<a href="https://www.aixinzhijie.com/article/6846120">原文链接</a>。
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。