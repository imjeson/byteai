---
title: '智谱AI静悄悄的上线了一大波新模型，过年了，真的。'
date: 2024-09-03
author: ByteAILab

---

文章来源：数字生命卡兹克

智谱今天下午在KDD 2024上面，悄咪咪的上线了一堆的超级更新。

---

我真的服了，我本来今天从泰国回来，准备休一天假的，结果晚上又坐在电脑面前被迫营业。
他们总是每次，静悄悄的就把4个2给扔出去了。
嗯，就一场演讲了，发布了一堆新模型还有新功能，个顶个都很猛。
我挨个列一下：
**大语言模型GLM-4-Plus。**
**图像和视频理解模型GLM-4V-Plus。**
**AI绘图图模型CogView-3-Plus。**
**智谱清言上线“视频通话”**
而且，这些新模型，已经全部上线了他们的开发者平台，现在，开发者已经可以直接调用API去进行开发了。。。

至于上线到智谱清言上面给普通消费者用，可能还得几天，我线上试了一下还都是老模型，毕竟模型太多了，这切换上去估计也费点时间。。。

说实话，我懵逼了，也麻了。
智谱AI就一直都是很这种地主家的傻儿子的感觉，这但凡是OpenAI，发这么多东西，必须让你先猜谜语3天，跟你玩个大反转。。。
一个一个说下：
**GLM-4-Plus**
全新的模型，看了下跑分整体基本上正儿八经的追平了GPT4o，而且智谱这家公司是很实诚的那种，真的不如就是不如，真的超过就是超过，不弄虚作假，所以这个跑分还是非常可信的。

AlignBench（对齐和遵循指令能力）还有MATH（数学能力）基本跟GPT4o打平，GPQA（小学问题）和LCB（代码）这块能打平GPT4o但是跟Claude 3.5还是有一些差距，Claude 3.5实在是太强了。
长文本这块，能力基本是打平或者超越。

我也去后台跑了一下GLM-4-Plus，效果确实是比之前强了。
至少之前我测试的那个很坑爹的调休问题：这么多AI大模型，就没一个能算清今年这破调休的？
基本所有的大模型都全军覆没，只有Claude3.5能连续答对5次。
而新的GLM-4Plus，这次居然也连续答对5次了。
很强，很猛。
而这个经典的动物过河问题：“农夫需要把狼、羊和白菜都带过河，但每次只能带一样物品，而且狼和羊不能单独相处，羊和白菜也不能单独相处，问农夫该如何过河。”
GLM-4-Plus也是3次连对，这道题之前也是所有的大模型全军覆没，甚至Claude3.5都错了。
很强，非常强。
而价格这块，算不上便宜，中规中矩价格吧，比Claude3.5贵。

**GLM-4v-Plus**
终于支持视频理解了，这点很强，而且很爽。也可以直接理解网页内容，然后转换为 html 代码。
基本每项都能超Glaude和GPT4，但是唯独MMMU-Val（多模态和多任务理解能力方面表现的基准测试）拉了，还有很大的进化距离。

功能这块也是最齐全的。
我在后台跑了下。
图片理解没啥问题。
但是后台有个小BUG，就是明明支持视频理解了，但是后台的测试不支持视频上传。
就很坑。
价格这块，也不算贵。
毕竟这也算是国内首个通用视频理解模型 API。

**CogView-3-Plus**
他们也终于更新了新的绘图模型，说是有了大幅进化。
但是我实际测下来，嗯坦率的讲，离Flux、Midjourney这种肯定还有不少距离，但是至少在美感上，智谱的这个AI绘图模型是比以前进化很多了，容易不再是偏理工的审美了。。
放几张我在后台跑的图。
能看了。

**智谱清言“视频通话”**
我因为某些奇怪的关系，所以智谱的很多内测，我基本都会第一批拿到。
那这个智谱清言的“视频通话”，我也是今天发现，我能直接用上了。
在我打开摄像头，看着自己出现在视频里，和小智对话的那一刻。
次元壁感觉破了。
“你好，我是小智。很高兴见到你！”虚拟助手的声音从扬声器里传来。
这感觉真奇妙啊。以前和AI聊天，总觉得它是个看不见的“幽灵”。现在突然多了个“眼睛”，让AI更“真实”了。
我随手跟他聊了聊。
这应该也是国内第一个类GPT4o的视频通话功能。
可以标记，不过可惜的是声音能明显的感觉到是极低延时的TTS，在实时对话中是可以打断的。但是依然不会唱歌，没有太明显的情绪。
但是这种随时可以打断，并迅速切换话题的能力，在GPT4o还是个大期货的状态下，还是很有用的。
有趣，而且够实用，时间不够，没有太多的去玩，等我后续好好再体验一下。
但是体验上视频理解能力还不是完全体，有一些问题，好像视频理解能力没有上最强的，我期待一下后面的更新。
大多数用户应该都还没拿到，如果想用的，可以用这个链接里扫码申请，应该会很快：https://zhipu-ai.feishu.cn/share/base/form/shrcnqpIx9q5ILEFeT2cPNhyuSf

**写在最后**
智谱这家公司，在我心中一直都是一个很特别的存在。
就像那种在少林寺中的扫地僧，经常默默的干活，不时给你来个大的。
而且，不只是一个概念产品或远期目标，而是已经可以投入使用的实际技术。
这种“直接拿出真东西”的做法，展现着我们的态度。
再看看大洋彼岸。
每天拿着虚无缥缈的草莓再营销的公司。
嗯，我还是喜欢我们，自己家的东西。
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。