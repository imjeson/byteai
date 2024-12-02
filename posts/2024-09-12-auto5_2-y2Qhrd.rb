```
---

title: '蚂蚁自研知识增强大模型服务框架KAG，可显著提升知识推理准确率'
date: 2024-09-13
author: ByteAILab

---

近日，在 2024 Inclusion・外滩大会 “超越平面思维，图计算让 AI 洞悉复杂世界” 见解论坛上，蚂蚁集团知识图谱负责人梁磊分享了 “构建知识增强的专业智能体” 相关工作，并带来了知识图谱与大模型结合最新研发成果 —— 知识增强大模型服务框架 KAG。

梁磊介绍，专业领域增强大模型服务框架 KAG 通过图谱逻辑符号引导决策和检索，显著提升了垂直领域决策的精准性和逻辑严谨性；通过信息检索可补全知识图谱的稀疏性和知识覆盖的不足，同时充分利用大语言模型的理解和生成能力降低领域知识图谱的构造门槛。

---
KAG 框架在垂直领域的适用性得到了有效验证。比如，支付宝最新推出的 AI 原生 App “支小宝” 采用这套框架，在政务问答场景的准确率提升到了 91%，医疗问答垂直的指标解读准确率可达 90% 以上。梁磊还透露，KAG 框架会进一步向社区开放，并在开源框架 OpenSPG 中原生支持，也欢迎社区共建。

以下是梁磊在外滩大会上的演讲内容摘要，机器之心做了不改变原意的整理。

1、可信是大语言模型真正落地应用的前提

大语言模型有着很好的理解和生成能力，在垂直领域的应用有巨大的机会，但同时也存在着非常大的挑战。比如在垂直领域跟专家经验、一些具体业务结合的时候，依然存在着不懂领域知识、做不了复杂决策、不可靠等问题。

首先，大语言模型本身不具备比较严谨的思考能力。在一些测试中，我们让大语言模型做复杂问题的拆解，问两部电影之间的共同主演是谁，结果显示总体上回复的准确性和一致性...

...

（省略部分内容）

...

在这个过程中，我们首先需要解决的是垂直领域应用的问题。系统既能进行复杂的符号决策，又能在复杂符号决策无法满足需求时，通过向量检索进行补充。在框架的后续版本中，我们将提供一些用户可调的参数。这意味着，如果用户对准确率有极高要求，可以减少基于信息检索生成的内容；如果对准确率有一定容忍度，则可以适当放宽标准。这为用户提供了一个可调节的垂直领域解决方案。因为并不是所有垂直领域应用场景都要求绝对的准确率，而是存在一定的容忍范围。因此，我们可以为用户提供更多的动态选择。

除了上述工作，为加速知识图谱与大语言模型的双向融通，蚂蚁集团也和浙江大学成立了知识图谱联合实验室。联合实验室已发布了大模型抽取框架 OneKE，下一步还将构建增强语言模型的 OneGraph。

后记：在 2024Inclusion・外滩大会 “超越平面思维，图计算让 AI 洞悉复杂世界” 见解论坛上，美国伊利诺伊大学芝加哥分校计算机科学与技术系特聘教授俞士纶、国际关联数据基准委员会（LDBC）副主席 Alastair Green、中国人寿财产保险有限公司人工智能开发团队负责人孔宇飞、蚂蚁数字科技 AI 技术负责人章鹏、蚂蚁集团图计算解决方案架构师崔安颀等嘉宾也带来了精彩分享，更多观点可点击此链接查看。

---

```
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。