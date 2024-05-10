---
title: '谷歌、OpenAI 都搞起了AI “造人”？创始团队：开源AI基因编辑器只是冰山一角'
date: 2024-05-04
author: ByteAILab

---

来源：[AI前线](https://mp.weixin.qq.com/s/8h6pLBN5PxsofE3mqC3GIA)  
译者：王强、华卫  
策划：华卫  

“AI 能编辑 DNA 了，还是开源版！”  

![图片来源：由GPTNB生成](http://www.jesonc.com/upload/3B33CB85B496C0CB6FBA4C2BD79320AD/1714721126966/FsGJ2uYxRfrfHfFGLiqKmsumIm4B.png)  
*图片来源：由GPTNB生成*  

<code>OpenCRISPR-1 开源链接：</code>  
<code>https://github.com/Profluent-AI/OpenCRISPR</code>  

今天，人工智能系统不止可以设计出创作诗歌、代码和视频的模型，还开发出了精确编辑人类 DNA 的开源工具。这不仅是 AI 的巨大进步，还预示着，将来科学家可以比现在更精确、快速地对抗各种疾病。

---
  

近日，美国一家名为 Profluent 的初创公司公开介绍了这项技术，并预计于下个月在美国基因和细胞治疗学会年会上发表相关论文。“使用人工智能技术创建基因编辑机制史无前例，”美国加州大学旧金山分校生物工程和治疗科学系教授兼系主任 James Fraser 表示。  

据悉，Profluent 是在分析了大量生物数据后，通过对 CRISPR-Cas 序列进行人工智能算法建模来设计出高功能基因组编辑器，并将其命名为 OpenCRISPR-1。通过 OpenCRISPR-1，该公司的人工智能系统从大规模序列和生物学背景中学习，产生了数百万种自然界中不存在的 CRISPR 样蛋白，从而成倍扩大了几乎所有已知的 CRISPR 家族。  

并且，OpenCRISPR-1 基因编辑器正在被开源。这意味着，其允许个人、学术实验室和公司免费试用该工具。很多研究人员都会把开发的人工智能底层驱动软件开源出来，让其他人可以在他们的成果基础上继续开发工作，以加速新技术的开发步伐，但像 OpenCRISPR-1 这类生物实验室和制药公司开源技术发明的情况并不常见。不过，Profluent 并没有开源该编辑器本身的技术内容。  

Profluent 还透露，OpenCRISPR-1 只是冰山一角，他们的平台能够随意生成更多的基因编辑系统。然而，尽管目前 OpenCRISPR-1 还没有投入临床，但已经招致不少除应用效果以外的担忧。  

“完全由 LLM 驱动  
将蛋白质多样性扩大 4.8 倍”  

在这项研究中，Profluent 展示了世界上第一个使用人工智能从头开始设计的分子的精确基因编辑。基因编辑器是复杂的系统，需要多结构域蛋白质、DNA 和 RNA 之间复杂的空间和时间相互作用。使用人工智能设计功能差异化的基因编辑器，代表了人工智能驱动生物设计蓬勃发展领域的重大飞跃。  

OpenCRISPR-1 的技术是由人工智能驱动、Cas9 样蛋白和指导 RNA 组成，完全使用  Profluent 的大型语言模型（LLM）开发。该模型学习的是氨基酸和核酸序列，这些化合物定义了科学家用来编辑基因的微观生物机制。也就是说，它分析了从自然界中提取的 CRISPR 基因编辑器的行为，并学习该如何生成全新的基因编辑器。  

“这些人工智能模型从序列中学习，无论这些序列是字符、单词、计算机代码还是氨基酸序列。”Profluent 首席执行官 Ali Madani 表示。  

据介绍，生成蛋白质语言模型通常在跨越广泛功能的大型、多样化的天然蛋白质序列数据集上进行预训练，可以生成反映天然蛋白质特性的真实蛋白质序列。然而，对于特定的应用，如产生新的基因编辑器，就需要将模型引导到特定的目标蛋白质家族。  

为此，Profluent 进行了详尽的数据挖掘，以构建迄今为止最广泛的 CRISPR 系统数据集，被称为 CRISPR-Cas 图谱。为生成新的 CRISPR-Cas 蛋白，他们又在 CRISPR-Cas 图谱上训练了一个蛋白质语言模型。  

![图：生成的序列极大地扩展了 CRISPR 相关蛋白质家族的多样性，以蛋白质簇的数量来衡量，图中显示了每个蛋白质家族在不同类型的 CRISPR-Cas 系统中被发现的频率。](http://www.jesonc.com/FiTtzwCRc8W4wr76RBQoqOuplLb3)  

从该模型中生成了 400 万个序列，并使用生物信息学技术来去除简并序列，确定每个生成的蛋白质属于哪个 CRISPR-Cas 家族后，他们发现，这些模型产生的蛋白质将几乎所有天然存在的 CRISPR-Cas 家族的多样性扩大了 4.8 倍，并且之后可以生成更多的序列进一步扩大这种多样性。  

鉴于 SpCas9 的广泛采用和临床成功，其使用模型生成了可与 SpCas9 互操作的 Cas9 样蛋白，并选择了其中 48 个生成的序列，用于在人类细胞中进行严格的功能表征。他们发现，当与脱氨酶配对时，OpenCRISPR-1 和 SpCas9  在精确编辑靶基因组中的单个碱基时具有相似的活性和特异性。此外，他们还能够保持碱基编辑活性，同时使用由另一种 Profluent 训练的蛋白质语言模型生成的脱氨酶来提高特异性。  

![图：对于测试的 5 种生成的核酸酶中的 4 种，使用模型生成的 sgRNA 提高了编辑效率。](http://www.jesonc.com/Fgko_umcqDeT5r3JJkWve2AOUbqW)  

最后，为了进一步优化生成的核酸酶活性， Profluent 还训练了一个模型来为任何给定的 Cas9 样蛋白生成相容的 sgRNA。与 SpCas9 的 sgRNA 相比，这些生成的 sgRNA 可以提高所测试的五种蛋白质中四种产生的核酸酶的活性。  

“CRISPR 基因疗法的“升级版”  

“我们与 OpenCRISPR 的意图是与尖端研究机构和药物开发人员合作，以一种强大而实用的方式安全地加速 CRISPR 基因疗法的开发。”Profluent 首席商务官 HilaryEaton 表示。  

目前，基于 CRISPR 的技术已经改变了科学家研究和对抗疾病的方式，并提供了能够改变镰状细胞性贫血和失明等遗传疾病患者的治疗方法，但仍需加速发展以治疗数千种其他还无治愈之法的疾病。据介绍，OpenCRISPR-1 正是基于 CRISPR 的生物机制所构建。  

源自微生物的基于 CRISPR 的基因编辑器虽然功能强大，但当移植到非天然环境（如人类细胞）中时，通常会显示出显着的功能权衡，人们希望能够生产出比经过数十亿年进化而来的天然基因编辑器更灵活、强大的基因编辑器。人工智能系统的设计恰恰能提供一种强大的替代方案，有可能绕过进化约束生成具有最佳属性的编辑器。  

“我梦想着这样一个世界，我们可以在几周内按需提供 CRISPR。”美国加州大学伯克利分校创新基因组学研究所的基因编辑先驱兼科学主任 Fyodor Urnov 说。  

事实上，OpenCRISPR-1 是整个业界努力构建可以改善医疗保健的人工智能技术的一个缩影。例如，华盛顿大学的科学家正在利用 ChatGPT 和 Midjourney 等图像生成器背后所采用的人工智能技术方法来组装全新的蛋白质，并致力于加速新疫苗和药物的开发。  

“从长远来看，这可以通向一个快速为个人定制药物和治疗方法的时代，定制速度甚至比我们现在的还快。”Urnov 认为，生成式人工智能系统具有巨大的潜力，它们往往会通过从越来越多数据中学习的过程来快速改进自身。如果像 Profluent 这样的技术继续改进，其最终可以让科学家以更精确的方式编辑基因。  

而目前看来， Profluent 也具备技术进化的资金支撑。3 月 21 日，Profluent 宣布完成 3500 万美元追加融资，融资总额达到 4400 万美元。这笔融资由 Spark Capital 领投，现有投资者 Insight Partners 和 Air Street Capital 以及来自 OpenAI、Salesforce、Octant Bio 和谷歌（包括谷歌 DeepMind 首席科学家 Jeff Dean）的天使投资人组成的财团也参与了投资。该公司此前还曾从 Insight Partners、Air Street Capital、AIX Ventures 和 Convergent Ventures 募集到 900 万美元种子轮资金。  

“临床可能引发副作用”  

虽然这项研究已经表明，人工智能模型可以生成能够编辑人类基因组的工具。但目前 Profluent 还没有对基因编辑器 OpenCRISPR-1 进行临床试验，因此尚不清楚其是否能达到或超过 CRISPR 的性能表现。  

不过，可以确定的是，短期内这一技术进展不太可能影响医疗保健领域。Urnov 表示，事实上科学家们并不缺乏可以用来对抗疾病的天然基因编辑器，推动这些编辑器通过临床前研究的成本才是瓶颈所在，如安全性、制造和监管审查，经过这些步骤后才能将其用于治疗患者。  

此外，这样的合成基因编辑器案例还引发了其他担忧。长期以来，科学家一直警告不要将 CRISPR 用于人类身体改造和治疗领域，因为这项技术相对较新，可能会产生引发癌症等不良副作用，还能提供一些不道德的用途，如对人类胚胎进行基因改造。  

对此，Fraser 的看法是，“一个不道德的人，并不在乎他们使用的基因编辑器是不是人工智能创建的，他们只会继续使用现有工具。”  

原文链接：  
[https://www.nytimes.com/2024/04/22/technology/generative-ai-gene-editing-crispr.html](https://www.nytimes.com/2024/04/22/technology/generative-ai-gene-editing-crispr.html)  
[https://www.biorxiv.org/content/10.1101/2024.04.22.590591v1](https://www.biorxiv.org/content/10.1101/2024.04.22.590591v1)  
[https://www.businesswire.com/news/home/20240422399482/en/Profluent-Successfully-Edits-Human-Genome-with-OpenCRISPR-1-the-World%E2%80%99s-First-AI-Created-and-Open-Source-Gene-Editor](https://www.businesswire.com/news/home/20240422399482/en/Profluent-Successfully-Edits-Human-Genome-with-OpenCRISPR-1-the-World%E2%80%99s-First-AI-Created-and-Open-Source-Gene-Editor)  
[https://www.profluent.bio/blog/editing-the-human-genome-with-ai](https://www.profluent.bio/blog/editing-the-human-genome-with-ai)
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。