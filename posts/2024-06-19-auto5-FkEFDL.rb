```
---

title: '单镜头16秒720p高清视频一键生成，开源版Sora又有新惊喜了'
date: 2024-06-20
author: ByteAILab

---

潞晨 Open-Sora 团队在 720p 高清文生视频质量和生成时长上实现了突破性进展，支持无缝产出任意风格的高质量短片，令人惊喜的是，他们选择再给开源社区带来亿点点震撼，继续全部开源。

开源地址：https://github.com/hpcaitech/Open-Sora
通过他们的模型权重，能够生成各种酷炫的短片，比如海浪和海螺的亲密接触，还有那些深不可测的森林秘境。

---


[图片链接展示](https://mmbiz.qpic.cn/sz_mmbiz_gif/KmXPKA19gW9mibb7NPZfEiaevxrbBrMgnLZ9x6ibGIWCjVa36BImfl0XmNM0JT1aEKGO4zeZiadd485AolA8USKXhw/640?wx_fmt=gif&from=appmsg)

人物肖像的渲染也相当逼真。

[图片链接展示](https://mmbiz.qpic.cn/sz_mmbiz_gif/KmXPKA19gW9mibb7NPZfEiaevxrbBrMgnLLf5RjRL9H0l9ia13d7PRY089kwolJchBR8WFDl3TaeVicYtKxB6D5WiaA/640?wx_fmt=gif&from=appmsg)

还能精准渲染赛博朋克风，让短片瞬间充满强烈的未来感和科技感。

[图片链接展示](https://mmbiz.qpic.cn/sz_mmbiz_gif/KmXPKA19gW9mibb7NPZfEiaevxrbBrMgnLLicRGG2wDbCCM3uL6or53plwBgQEnn5LXoQ5gPngYdxiatO9F0eQ7Rnw/640?wx_fmt=gif&from=appmsg)

还能生成有趣生动的动画镜头，带来极具表现力的视觉体验。

[图片链接展示](https://mmbiz.qpic.cn/sz_mmbiz_gif/KmXPKA19gW9mibb7NPZfEiaevxrbBrMgnLFYB4vGW0B7ue8XicibOialAia5IhOiaYLY3qgWyNIX5tKnK3nHgdeVtG4Vg/640?wx_fmt=gif&from=appmsg)

即使是电影级别的镜头制作，也能轻松应对。

例如，实现流畅的变焦效果，为影片增添专业级的视觉效果。

[图片链接展示](https://mmbiz.qpic.cn/sz_mmbiz_gif/KmXPKA19gW9mibb7NPZfEiaevxrbBrMgnLfr0rgZFr7BLoPicOdobg7BDJWMo16pdicG6B2ibZjDH79Q6LYB8YnicTNw/640?wx_fmt=gif&from=appmsg)

还能帮助电影制作人员创造出逼真的电影镜头。

[图片链接展示](https://mmbiz.qpic.cn/sz_mmbiz_gif/KmXPKA19gW9mibb7NPZfEiaevxrbBrMgnLbN1EA3gDVfSTvDVfbbV2ibgRh6vzHMNdciaB7Qiaiahot3W5REWAqsamUA/640?wx_fmt=gif&from=appmsg)

潞晨的 Open-Sora 模型以其卓越的性能揭示了视频生成领域的广阔前景，而他们的模型权重和训练代码已经全面开源，感兴趣的朋友可以访问他们的 GitHub 地址：https://github.com/hpcaitech/Open-Sora

LambdaLabs，美国科技界独角兽，基于潞晨团队先前开源的 Open-Sora 模型权重打造了一个数字乐高宇宙，乐高迷们在这里找到了极致的创意体验。

潞晨团队深谙开源对于文生视频技术突破的加速度，他们不仅持续开源模型权重，还在 Github 上晒出了技术路线，让每个玩家都能成为文生视频大模型的掌控者，不再是单纯的围观群众。报告一出炉，我们就火速进行了深度挖掘和解析，试图捕捉文生视频技术的最新动向。（报告地址：https://github.com/hpcaitech/Open-Sora/blob/main/docs/report_03.md）

在潞晨 OpenSora 团队发布的这份技术报告中，他们深度剖析了本次模型训练的核心和关键。在上一个版本基础上，引入了视频压缩网络（Video Compression Network）、更优的扩散模型算法、更多的可控性，并利用更多的数据训练出了 1.1B 的扩散生成模型。

在这个 "算力为王" 的时代，我们深知视频模型训练的两大痛点：计算资源的巨大消耗与模型输出质量的高标准。潞晨 Open-Sora 团队以一种极简而有效的方案，成功地在成本和质量之间找到了平衡点。

OpenSora 团队提出了一个创新的视频压缩网络（VAE），该网络在空间和时间两个维度上分别进行压缩。具体来说，他们首先在空间维度上进行了 8x8 倍的压缩，接着在时间维度上进一步压缩了 4 倍。通过这种创新的压缩策略，既避免了因抽帧而牺牲视频流畅度的弊端，又大幅降低了训练成本，实现了成本与质量的双重优化。

Stable Diffusion 3，最新的扩散模型，通过采用了 rectified flow 技术替代 DDPM，显著提升了图片和视频生成的质量。尽管 SD3 的 rectified flow 训练代码尚未公开，但潞晨 Open-Sora 团队已经基于 SD3 的研究成果，提供了一套完整的训练解决方案，包括：

- 简单易用的整流（rectified flow）训练
- 用于训练加速的 Logit-norm 时间步长采样
- 基于分辨率和视频长度的时间步长采样

通过这些技术的整合，我们不仅能够加快模型的训练速度，还能显著减少推理阶段的等待时间，确保用户体验的流畅性。此外，这套训练方案还支持在推理过程中输出多种视频宽高比，满足了多样化场景下的视频素材需求，为视频内容创作者提供了更加丰富的创作工具。

他们在报告中也透露了更多关于模型训练的核心细节，包括数据清洗和模型调优的实用技巧，以及构建了更完善的模型评估体系，保障模型的稳健性和泛化能力。他们还提供了可以自行一键部署的 Gradio 应用，并支持调节输出的运动分数、美学分数和镜头移动方式等参数，甚至可以一键通过 GPT-4o 自动修改指令并支持中文输入。要忍不住 get hands dirty 了，详情请戳 https://github.com/hpcaitech/Open-Sora/blob/main/docs/report_03.md

自 OpenAI Sora 发布以来，业界对 Sora 的开放性期待值爆表，但现实却是持续的等待游戏。潞晨 Open-Sora 的开源，为文生视频的创新和发展注入了强劲的活力。“授人以鱼不如授人以渔”，访问他们的 github 地址，即可零门槛免费获得模型权重和全套训练代码，这使用户从被动的内容消费者转变为积极的内容创造者。这一转型为企业用户解锁了自主开发文生视频应用的新技能，无论是打造沉浸式游戏、创意广告还是制作影视大片，文生视频技术的应用场景得到了指数级扩展。

我们期待这股星星之火，能够点燃整个文生视频领域的创新激情，实现从点到面的燎原之势。

最后附上潞晨 OpenSora 开源链接：https://github.com/hpcaitech/Open-Sora

参考链接：
- https://wandb.ai/lambdalabs/lego/reports/Text2Bricks-Fine-tuning-Open-Sora-in-1-000-GPU-Hours--Vmlldzo4MDE3MTky
- https://hpc-ai.com/blog/open-sora-from-hpc-ai-tech-team-continues-open-source-generate-any-16-second-720p-hd-video-with-one-click-model-weights-ready-to-use

---
```
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。