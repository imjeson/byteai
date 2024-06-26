---
title: 'Meta训AI，成本已超阿波罗登月！谷歌豪言投资超千亿美元，赛过OpenAI星际之门'
date: 2024-05-06
author: ByteAILab

---

就在刚刚，Meta AI主管Yann LeCun证实：为了买英伟达GPU，Meta已经花了300亿美元，这个成本，已经超过了阿波罗登月计划！

300亿美元虽然惊人，但比起微软和OpenAI计划打造的1000亿美元星际之门，这还是小case了。

谷歌DeepMind CEO Hassabis甚至放话称：谷歌要砸进的数，比这个还多。

---


这才哪到哪呢。

为了发展AI，Meta是破釜沉舟了。

在这个访谈中，主持人问道：据说Meta购入了50万块英伟达GPU，按照市价算的话，这个价格是300亿美元。所以，整个成本比阿波罗登月项目话要高，对吗？

对此，LeCun表示承认：是的，的确如此。

他补充道，「不仅是训练，还包括部署的成本。我们面临的最大问题，就是GPU的供给问题。」

有人提出质疑，认为这应该不是真的。作为史上最大的推理组织，他们应该不是把所有的钱都花在了训练上。

也有人戳破了这层泡沫，表示每个巨头都在撒谎，以此营造「自己拥有更多GPU」的假象——

虽然的确在英伟达硬件上投入大量资金，但其实只有一小部分用于实际训练模型。「我们拥有数百万个GPU」的概念，就是听起来好吹牛罢了。

当然，也有人提出质疑：考虑通货膨胀，阿波罗计划的成本应该是接近2000-2500亿美元才对。

的确，有人经过测算，考虑阿波罗计划1969年的原始价值、根据通货膨胀进行调整的话，它的总成本应该在2170亿或2410亿美元。

https://apollo11space.com/apollo-program-costs-new-data-1969-vs-2024/

而沃顿商学院教授Ethan Mollick表示，虽然远不及阿波罗计划，但以今天的美元计算，Meta在GPU上的花费几乎与曼哈顿计划一样多。

不过至少，网友们表示，很高兴对巨头的AI基础设施有了一瞥：电能、土地、可容纳100万个GPU的机架。

开源Llama 3大获成功

此外，在Llama 3上，Meta也斩获了亮眼的成绩。

在Llama 3的开发上，Meta团队主要有四个层面的考量：

模型架构

架构方面，团队采用的是稠密自回归Transformer，并在模型中加入了分组查询注意力（GQA）机制，以及一个新的分词器。

训练数据和计算资源

由于训练过程使用了超过15万亿的token，因此团队自己搭建了两个计算集群，分别具有24000块H100 GPU。

指令微调

实际上，模型的效果主要取决于后训练阶段，而这也是最耗费时间精力的地方。

为此，团队扩大了人工标注SFT数据的规模（1000万），并且采用了诸如拒绝采样、PPO、DPO等技术，来尝试在可用性、人类特征以及预训练中的大规模数据之间找到平衡。

如今，从最新出炉的代码评测来看，Meta团队的这一系列探索可以说是大获成功。

Symflower首席技术官兼创始人Markus Zimmermann在对GPT-3.5/4、Llama 3、Gemini 1.5 Pro、Command R+等130多款LLM进行了全面评测之后表示：「大语...
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。