---

title: 'AI圈卷疯了！xAI、Anthropic同日上线API：Grok免费公测，Claude 3.5 Haiku价格暴涨'
date: 2024-11-07
author: ByteAILab

---

来源：[新智元](https://mp.weixin.qq.com/s/ob35syuwSeaxp4_nfud9sA)

![图片来源：由GPTNB生成](http://www.jesonc.com/upload/8FD7B96F5E34993C64020C0DB54F4C00/1730860754488/FoJjYQPWELugosKG00-UBzDPQiM4.png)

就在刚刚，Anthropic宣布，Claude 3.5 Haiku已经可以通过API访问。

![图片](http://www.jesonc.com/Fl_QcT0hClP1czIsUHiARnJF2hUr)

与此同时，就在今天，Grok API也官宣正式开启公测。

---


![图片](http://www.jesonc.com/FtH5KXr-vqcc-y975_oftmiBoOpe)

**Claude 3.5 Haiku正式开放API**

Claude 3.5 Haiku现已在Anthropic的API、Amazon Bedrock和Google Cloud的Vertex AI上提供。Anthropic的开发者关系运营负责人Alex Albert发帖说，「该模型还更新了截至2024年7月的知识——是所有Claude模型中最新的」。

![图片](http://www.jesonc.com/FmRvSubyX6QGEQB9w21tO-zz-jL-)

性能方面，Claude 3.5 Haiku可谓是表现不俗，已经在接近Sonnet的表现了。它在编程和代理任务上的表现也超越了除新款3.5 Sonnet外的所有此前Claude模型。

![图片](http://www.jesonc.com/Fp81i8oCRbcsO7AUBb6hC_f45719)

SWE-bench Verified测试衡量了模型解决实际软件问题的能力。AI公司iGent的CEO评价道：「Claude 3.5 Haiku展现了令人印象深刻的推理和代码生成能力，包括展示强大的多轮代码优化功能，使与代码相关的错误减少了60%。它和其他体积更大的模型处于同一水平」。

![图片](http://www.jesonc.com/FjeS4a8fcYu-sYFDRzzyluGUM8J2)

凭借这些特性，Claude 3.5 Haiku非常适合面向用户的产品、专业化子代理任务，以及从大量数据（如购买历史、定价或库存记录）中生成个性化体验。基于此，Anthropic列举了一些适用于Haiku的使用场景：

1. 代码补全：Claude 3.5 Haiku提供快速、准确的代码建议和补全，能加速开发工作流。
2. 交互式聊天机器人：凭借增强的对话能力和快速响应，Claude 3.5 Haiku非常适合支持响应迅速的聊天机器人，能够处理大量用户互动。这对需要大规模互动的客户服务、电商和教育平台尤为有价值。
3. 数据提取和标注：Claude 3.5 Haiku能够高效处理和分类信息，使其在快速数据提取和自动化标注任务中表现出色。此功能对处理大量非结构化数据的金融、医疗和研究机构尤为实用。
4. 实时内容审核：Claude 3.5 Haiku通过其改进的推理和内容理解能力，提供可靠的即时内容审核。这对需要大规模维持安全、适当内容的社交平台、在线社区和媒体组织而言非常有价值。

然而，随着性能提升，Haiku的价格提升至之前的4倍！它现在的定价起步为每百万输入tokens $1，每百万输出tokens $5。

![图片](http://www.jesonc.com/Fs3iS7WOvSVJXOBXbeXP1Uliyty6)

**网友：能力不咋行，涨价第一名**

看到这个价格，网友们纷纷吐槽「太贵了」！「Jimmy Apples」感慨道：如今，Anthropic的光芒正在褪去。比起隔壁的4o-mini，3.5 Haiku在很多基准测试上的表现更差，但价格却更贵。

![图片](http://www.jesonc.com/Fr7lRROzQeCy5OUUXo3eQQl2FR-a)

而网友「John」则特地做了一个Claude 3.5 Haiku和Gemini 1.5 Flash的性能/价格对比。从表格中不难看出，3.5 Haiku要花多几十倍的钱，但换来的却只有一点点性能提升。

![图片](http://www.jesonc.com/FpxtNy8X3S9mFBgcDFFr3864HcYn)

网友「elvis」甚至还画了更直观的柱状图来体现Haiku夸张的涨价幅度——

![图片](http://www.jesonc.com/FsIICFT9PmxFuNElDfW0enw3xj1S)

并对比了Claude 3.5 Haiku和GPT-4o Mini、Gemini 1.5 Flash在MATH Benchmark和GPQA Diamond Benchmark两个基准测试上的表现——可以看到，比起上一代模型，新版的3.5 Haiku在价格上提升了4倍之多。而那些表现基本差不多（甚至更好）的同类模型，价格更是「断崖式」地便宜。

**Grok API开启公测**

如前所述，由马斯克xAI推出的大模型Grok，也正式开启API的公测了。到2024年底，每月有25美金免费额度，人人均可参与。如果你之前已经购买了预付费额度，比如50美元，那么在11月和12月，你每月都能获得75美元（25+50）的免费额度。

![图片](http://www.jesonc.com/FnV_u_t22nCjgv-rljGRM2B50wVz)

**模型性能**

根据其官方博客介绍：此次，xAI公开了一个全新的Grok模型，代号「grok-beta」，该模型目前正处于开发的最后阶段。

![图片](http://www.jesonc.com/FlcRdjTVw6lWg2Y15VRZqy887snT)

该模型上下文长度为128000 token，这意味着Grok可以处理更长的文本输入，理解更复杂的上下文关系。此外，该模型不仅支持函数调用，也能支持系统提示词。从而让开发者能够更灵活地控制模型的行为。

![图片](http://www.jesonc.com/FjnWq3H5vjvOylL_jbEL-0WvV5MU)

这意味着它可以与外部工具进行高效的连接和交互，为各种复杂应用场景的实现提供了可能。借此机会，xAI还透露，除了纯文本版本外。下周还将发布一个支持图像输入的多模态版本。也就是说，以后Grok不仅能够读懂文字，也能看懂图片了。

**兼容OpenAI和Anthropic API**

值得一提的是，考虑到开发者的使用体验，xAI的REST API完全兼容Open AI和Anthropic的API，迁移起来也非常简单。如果你正在使用OpenAI的Python SDK，只需要做两个简单的改动：

- 将base_url改为https://api.x.ai/v1
- 使用在console.x.ai创建的xAI API密钥

就这么简单，你的应用就能无缝切换到Grok了！

---
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。