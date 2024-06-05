---

title: '高效、可泛化的高斯重建框架，只需3张视图即可快速推理，45秒便可完成优化'
date: 2024-06-05
author: ByteAILab

---

3D 重建和新视图合成技术在虚拟现实和增强现实等领域有着广泛的应用。NeRF 通过隐式地将场景编码为辐射场，在视图合成上取得了显著的成功。

---
然而，由于 NeRF 依赖于耗时的逐场景优化，极大地限制了其实用性。为了解决这一问题，出现了一些可泛化的 NeRF 方法，旨在通过网络前馈的方式从多视图中重建场景。然而，由于基于 NeRF 的方法需要在射线上查询密集的点进行渲染，因此速度受到了限制。最近，3D Gaussian Splatting（3D-GS）采用了各向异性 3D 高斯来显式表示场景，并通过可微分的光栅化器实现了实时高质量的渲染。

然而，3D-GS 同样依赖于每个场景的优化，每个场景需要几十分钟的时间。为了解决这个问题，后续出现了一些泛化性的高斯重建工作，尝试将 3D-GS 推广到未见过的场景，然而，这些方法的训练和渲染效率还有待提升且主要局限于物体或人体的重建。

基于此，来自华中科技大学、南洋理工大学、大湾区大学和上海人工智能实验室的研究者联合提出了一种高效的、可泛化的高斯重建模型，称为 MVSGaussian，用于未见过的一般场景的新视图合成。

论文名称：Fast Generalizable Gaussian Splatting Reconstruction from Multi-View Stereo

论文地址：[https://arxiv.org/abs/2405.12218](https://arxiv.org/abs/2405.12218)

项目主页：[https://mvsgaussian.github.io/](https://mvsgaussian.github.io/)

代码开源：[https://github.com/TQTQliu/MVSGaussian](https://github.com/TQTQliu/MVSGaussian)

演示视频：[https://youtu.be/4TxMQ9RnHMA](https://youtu.be/4TxMQ9RnHMA)

该模型能够从稀疏多视角图像中学习场景的 3D 高斯表征。通过结合多视角立体（MVS）的显式几何推理和高斯溅射实时渲染的优势，MVSGaussian 在泛化推理上表现出色，能够以最快的速度实现最佳的视图渲染质量。此外，MVSGaussian 在逐场景优化方面也有显著优势，仅需 45 秒（约为 3D-GS 的 1/10）即可完成高质量的实时渲染。

基本原理

设计一种高效的、可泛化的高斯溅射框架，我们面临以下几个关键挑战：

1）与使用隐式表示的 NeRF 不同，3D-GS 显式地使用数百万个 3D 高斯球来表达场景。将预训练的 3D-GS 应用于未见过的场景时，3D 高斯球的参数（如位置和颜色）会显著不同。设计一种通用的表征来适配 3D-GS 是一项非平凡的任务。

2）可泛化 NeRF 方法通过体渲染实现了令人印象深刻的视图合成效果。然而，高斯溅射的泛化能力尚未...
           
---
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。