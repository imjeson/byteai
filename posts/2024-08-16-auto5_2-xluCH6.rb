```
---

title: '从头设计抗体，腾讯、北大团队预训练大语言模型登Nature子刊'
date: 2024-08-17
author: ByteAILab

---

![](https://image.jiqizhixin.com/uploads/editor/59205a16-b3da-42d3-b1b8-ba2b01d8614f/640.jpeg)

AI 技术在辅助抗体设计方面取得了巨大进步。然而，抗体设计仍然严重依赖于从血清中分离抗原特异性抗体，这是一个资源密集且耗时的过程。

---


为了解决这个问题，腾讯 AI Lab、北京大学深圳研究生院和西京消化病医院研究团队提出了一种预训练抗体生成大语言模型 (PALM-H3)，用于从头生成具有所需抗原结合特异性的人工抗体 CDRH3，减少对天然抗体的依赖。

此外，还设计了一个高精度的抗原-抗体结合预测模型 A2binder，将抗原表位序列与抗体序列配对，从而预测结合特异性和亲和力。

总之，该研究建立了一个用于抗体生成和评估的人工智能框架，这有可能显著加速抗体药物的开发。

相关研究以「De novo generation of SARS-CoV-2 antibody CDRH3 with a pre-trained generative large language model」为题，于 8 月 10 日发布在《Nature Communications》上。

![](https://image.jiqizhixin.com/uploads/editor/d993b641-0d98-49d1-ad8d-bf129cffa480/640.png)

论文链接：[https://www.nature.com/articles/s41467-024-50903-y](https://www.nature.com/articles/s41467-024-50903-y)

抗体药物，又称单克隆抗体，在生物治疗中发挥着至关重要的作用。通过模仿免疫系统的作用，这些药物可以选择性地针对病毒和癌细胞等致病因子。与传统治疗方法相比，抗体药物是一种更具体、更有效的方法。抗体药物在治疗多种疾病方面已显示出积极的效果。

开发抗体药物是一个复杂的过程，包括从动物源中分离抗体，使其人性化，并优化其亲和力。但抗体药物的开发仍然严重依赖于天然抗体。

蛋白质的序列数据可以看作是一种语言，因此自然语言处理（NLP）领域的大规模预训练模型已被用来学习蛋白质的表征模式。当前已经开发了多种蛋白质语言模型。然而，由于抗体的多样性高和可用的抗原抗体配对数据稀缺，生成对特定抗原表位具有高亲和力的抗体仍然是一项具有挑战性的任务。

为了应对上述挑战，腾讯 AI Lab 团队提出了预训练抗体生成大型语言模型 PALM-H3，用于优化和生成重链互补决定区 3 (CDRH3)，该区域在抗体的特异性和多样性中起着至关重要的作用。

为了评估 PALM-H3 产生的抗体对抗原的亲和力，研究人员结合使用了抗原抗体对接和基于 AI 的方法。

研究人员还开发了用于评估抗体-抗原亲和力的 A2binder。A2binder 能够实现准确且可推广的亲和力预测，即使对于未知抗原也是如此。

### PALM-H3 和 A2Binder 的框架

PALM-H3 和 A2binder 的工作流程和模型框架如下图所示。

![](https://image.jiqizhixin.com/uploads/editor/f8e592b4-d222-46d3-8740-e8715f8380a6/640.png)

图示：PALM-H3 和 A2binder 工作流程概述。（来源：论文）

PALM-H3 的目的是生成抗体中的从头 CDRH3 序列。CDRH3 区域在决定抗体对特定抗原序列的结合特异性方面起着最重要的作用。PALM-H3 是一个类似 transformer 的模型，它使用基于 ESM2 的抗原模型作为编码器，使用抗体 Roformer 作为解码器。研究还构建了 A2binder 来预测人工生成的抗体的结合亲和力。

**PALM-H3 和 A2binder 的构建包括三个步骤：** 首先，研究人员分别在未配对的抗体重链和轻链序列上预训练两个 Roformer 模型。然后，基于预训练的 ESM2、抗体重链 Roformer 和抗体轻链 Roformer 构建 A2binder，并使用配对亲和力数据对其进行训练。最后，使用预训练的 ESM2 和抗体重链 Roformer 构建 PALM-H3，并在配对抗原-CDRH3 数据上对其进行训练，以从头生成 CDRH3。

**A2binder 可以准确预测抗原抗体结合概率、亲和力**

通过将 A2binder 预测亲和力的能力与几种基线方法进行比较来评估其性能。

A2binder 在亲和力数据集上表现出色，部分原因在于抗体序列的预训练，这使得 A2binder 能够学习这些序列中存在的独特模式。

![](https://image.jiqizhixin.com/uploads/editor/086a8c22-a9a7-407a-b9cb-e9bf69cceaf0/640.png)

图示：预训练和未训练模型的潜在能力比较以及 A2Binder 与基线方法在抗体-抗原结合特异性预测方面的性能比较。（来源：论文）

...

---

```
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。