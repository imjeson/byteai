---
title: '新融资 1.25 亿，用户超 1000 万，Suno 打算如何「改造」音乐行业？'
date: 2024-05-24
author: ByteAILab

---

昨天，**Suno 在 X 上宣布成功完成了 1.25 亿美元的 B 轮融资**。本轮投资者中，有风险投资公司 Lightspeed Venture Partners，还包括风险投资基金 Founders Collective，以及科技高管和投资者 Nat Friedman。

---


根据 The Information 的消息来源，本轮融资后 Suno 估值达到 5 亿美元。新筹集的资金将用于扩大公司的员工队伍，截至今年早些时候，公司仅有 12 名员工。

自 8 个月前推出首款产品以来，Suno AI 的用户群体已迅速增长至超过 1000 万。微软公司更是将 Suno 的功能直接整合到了其 Copilot 产品中。

在 Suno 的歌曲排行榜中 ，**Stone 是第一首超过 100 万次收听的歌曲**。如果 AI 音乐在开发一两年后就能如此流行，难以想象一下五年后它变成什么样。

最近，知名科技博主 No Priors 邀请到了 Suno 的联合创始人兼首席执行官 Mikey Schulman 展开一场精彩的讨论。**在访谈中，Mikey 分享了与他人合作创办 Suno 的心路历程，AI 音乐的难点以及它未来将会如何引爆产业变革**。

---

### 01

#### 从物理学到 AIGC：
#### 一切源于热爱？

Sarah：作为一位音乐爱好者，你的转型之旅相当独特，从音乐领域跨越到哈佛物理学博士，再到创立数家人工智能企业，能否跟我们分享一下这段历程？

Mikey：确实，这是一条曲折的路。我玩音乐已经有很长时间了，四岁起学习钢琴，成长过程中参与了很多乐队。然而，我意识到虽然我热爱音乐，但我的专长并不在此。相比之下，物理是更为明智的选择。我一路求学，从大学到研究生，直到取得物理学博士学位，专注于量子计算的研究。然而，尽管量子计算魅力无限，我内心清楚，它并不是我的终身事业。

Sarah：你是否预想过自己会成为一位理论物理学家？

Mikey：我从来没有设定过固定的职业路径，从不限定自己要做什么或不做什么。在研究生期间，我接触到的量子力学研究不仅理论深奥，而且在实践层面极具挑战。这一领域在上世纪 50 年代奠定基础，其中包含许多复杂的低温微波工程挑战，这些对于实际应用至关重要，我发现自己在处理这些问题上比一般的物理学家更有天赋。我在这里找到了自己的优势，享受着每一个探索的瞬间。

Sarah: 能否谈谈你是如何从物理学术界转向创业的？

Mikey: 我的转折点始于偶然遇见一家名为 Kentro 的小公司，它只有大约 10 名成员，但我立刻被那里的人和氛围吸引了。于是，我决定加入他们，成为一名软件工程师。幸运的是，我入职之后机器学习的机会便显现出来，尤其是在 2014 年，有物理学博士学位的我恰好成为了这一新兴领域中的一员。我抓住这个机会，快速学习，组建团队，开发出一些有趣的产品，最终在 2018 年，我们的公司被 S&amp;P Global 收购。

Sarah：你们的起点是基于一个开源模型——Bark。能否分享一下你们最初的灵感来源，以及你们是如何进入音乐生成这片领域的呢？

Mikey：在 Kensho，我们专注于文本处理，直到被 S&amp;P Global 收购后，我们接手了首个音频相关的项目——将收益电话会议转录为文字。你们两位都阅读过的收益电话会议记录，有很大一部分就是 S&amp;P Global 的成果。以往这类工作全靠人工，不仅繁琐而且费时，但通过自动化，我们显著提升了效率和处理量，也因此对音频 AI 产生了浓厚的兴趣。虽然我们本身就是音乐爱好者，但恰恰是这样一个并不那么吸引人的项目——收益电话会议的音频转录，点燃了我们的热情。此外，我们观察到相比于图像和文本领域，音频处理技术的发展滞后许多，这一情况在 2020 年尤为明显，而近年来图像和文本技术的飞速发展更是加剧了这一差距。

像我之前提到的，我们并没有一个详尽的长远规划。在开源项目 Bark 的开发过程中，甚至在它发布之前，我们就已经确定语音不是我们的主攻方向。确实，有不少人建议我们投身语音技术领域，他们认为开一个语音公司会更直接，「你会构建一个伟大的 B2B 产品，人们会喜欢它」。但我们太喜欢音乐了。所以我们决定建立一个音乐公司。

---

### 02

#### 新一轮产业变革：
#### 既是消费者，也是创作者

Sarah：为何你们决定不专注于语音而是投身音乐？

Mikey：语音虽然迷人，但它缺乏我们所追求的那种创造性的自由度。语音的目的在于准确传达信息，哪怕稍显机械或缺乏感情色彩，只要传达的信息无误，任务就算完成了。而真正的创造力发生在音频的一个完全不同的部分，那就是音乐。

Elad：你们在技术实现上有哪些独到之处，特别是在处理音乐生成上？

Mikey：我们主要采用 Transformer 模型，这得益于我们团队在文本处理方面的背景，而 Transformer 模型在音乐生成上同样表现出色。音频的采样率极高，每秒达到约 50,000 个样本点，我们面临的挑战在于**如何有效地将这种连续信号转换为可管理的 tokens 集**，这是一个需要创新思维的过程。

Sarah：你们如何评估模型生成音乐的质量？

Mikey：音乐的美感是评估的关键，这在 AI 领域是一个公认的事实。我们可能在技术指标上达到高准确度，但音乐的感染力和情感表达往往超越了这些量化的标准。音乐评估往往更为主观，意味着要听很多东西，并让人们听很多东西。在如何评估这些东西的问题上，我们还有很长的路要走，同时这个评估过程也让我们更深入地理解人类情感。

Elad：你的音乐背景在 Suno 的开发中发挥了怎样的作用？

Mikey：创办公司以来，我反而学到了更多关于音乐的新知识，接触到了之前从没接触过的音乐流派。**我的音乐背景或许帮助我们避免了模型中的隐性偏见**，我们尽量让模型不受限于传统的音乐理论框架，就像不要告诉 GPT 这是一个名词，那是一个动词，而是让 GPT 自己去理解。如果我告诉我的模型只有 12 种音调，我的模型将只知道如何输出 12 种音调；如果我告诉我的模型有 50 种不同的乐器，我将永远无法获得那种独特的音色。音乐的无限可能性和多样性正是我们想要模型能够自行探索的。

---

本文链接：<a href="https://www.aixinzhijie.com/article/6845860">https://www.aixinzhijie.com/article/6845860</a>  
转载请注明文章出处
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。