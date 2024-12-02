```
---

title: 'AMD的GPU跑AI模型终于Yes了？PK英伟达H100不带怕的'
date: 2024-09-06
author: ByteAILab

---

AMD vs 英伟达绝对算是一个长盛不衰的话题 —— 从玩游戏用哪家强到如今训练 AI 哪个更高效？原因也很简单：它们的 GPU 产品存在直接竞争关系。

当然，答案通常都偏向于英伟达，尤其是在 AI 算力方面，正如前些天李沐在上海交大演讲时谈到的那样：「算力这块，你可以用别的芯片，但是这些芯片用来做推理还 OK，做训练的话还要等几年的样子，英伟达还是处在一个垄断的地位。

---
」

但基于实证的对比研究却往往又会给出不一样的答案，比如在同一个演讲中，李沐还提到了这两家 GPU 的内存情况，对此他表示：「在这一块，虽然英伟达是领先者，但其实英伟达是不如 AMD 的，甚至不如 Google 的 TPU。」

实际上，不少业内人士都表达过对 AMD 占据更大市场份额的信心，比如 Transformer 作者及生成式 AI 初创公司 Cohere 创始人之一艾丹・戈麦斯（Aidan Gomez）前些天说：「我认为 AMD 和 Tranium 这些平台很快也将做好真正进入主流市场的准备。」

近日，专注计算硬件的科技媒体 The Information 发布了一份对比评测报告，声称是首个直接对比 AMD 和英伟达 AI 集群的基准评测。该报告的数据来自 MLCommons，这是一个由供应商主导的评测机构。

他们构建了一套 MLPerf AI 训练和推理基准。AMD Instinct「Antares」MI300X GPU以及英伟达的「Hopper」H100和H200和「Blackwell」B200 GPU都得到了评估。The Information 对比了这些评估数据。

结果表明：在AI推理基准上，MI300X GPU绝对能比肩H100 GPU，而根据The Information对GPU成本及系统总成本的估计，说MI300X GPU能媲美H100和H200 GPU也不为过。但是，也需要说明这些测试存在局限：仅使用了一种模型，即来自Meta的Llama 270B。希望未来能看到这些测试中使用更多不同的AI模型。

对MI300X及AMD未来的GPU来说，这个结果很是不错。

但到今年年底时，考虑到英伟达Blackwell B100和B200 GPU的预期价格，似乎英伟达将与AMD MI300X加速器开始比拼性价比。另外，也许AMD会在今年晚些时候推出MI325X GPU。

**重点关注推理**

AMD的数据直到上周才发布。业内有传言说AMD签了一些大订单，会把MI300X出售给超大规模计算公司和云构建商，以支撑他们的推理工作负载。无怪乎AMD直到上周才发布MLPerf Inference v4.1测试结果。

对MLPerf推理结果的分析表明，在使用Llama 270B模型执行推理任务时，MI300X在性能和成本上确实能与H100比肩。但和H200相比就差点了，毕竟H200有更大的HBM内存（141GB）和更高的带宽。如果Blackwell的定价符合预期，那么今年晚些时候推出的MI325为了具备竞争力，就必须得拥有更大的内存、更高的带宽和更激进的价格才行。

下面是最新发布的MLPerf基准评测结果：

![图片](https://mmbiz.qpic.cn/sz_mmbiz_png/KmXPKA19gWicBdHFVJGpaaHq7hw5aQlQUxuKarFtDKxJsor5rP5bCllGPym0C0uTfiaRjtwXibqeSdQsDf1Wmp2Ig/640?wx_fmt=png&from=appmsg)

英伟达的MLPerf基准评测结果来自英伟达自身，其中也包括使用Llama 270B模型在单台Blackwell B200 SXM上的结果，详情可访问这篇博客：[https://blogs.nvidia.com/blog/mlperf-inference-benchmark-blackwell/](https://blogs.nvidia.com/blog/mlperf-inference-benchmark-blackwell/)

The information提取了所有英伟达的结果，并新增了Juniper Networks在包含2个和4个节点的HGX H100集群上得到的结果（总共8和16台H100）。

AMD在配备一对当前的「Genoa」Epyc 9004系列处理器和八台Antares MI300X GPU的服务器节点中测试了标准通用基板（UBB），还测试了一台将Genoa CPU换成即将推出的「Turin」Epyc 9005系列CPU的机器，该系列CPU预计将在下个月左右推出。

![图片](https://mmbiz.qpic.cn/sz_mmbiz_png/KmXPKA19gWicBdHFVJGpaaHq7hw5aQlQUdlcGw7qCXQDlgVwDDJVficqeFGnql8nUDef0207QaNK6ryYMHgNI0uw/640?wx_fmt=png&from=appmsg)

AMD还向The Next Platform提供了一张图表，其中展示了在Genoa盒子上测试一台MI300X GPU的性能，这可以显示节点内GPU的扩展性能：

![图片](https://mmbiz.qpic.cn/sz_mmbiz_png/KmXPKA19gWicBdHFVJGpaaHq7hw5aQlQUfu3vL6QHoDVNMYRiaTcqtGgOtxItT3pT8YkdxXQX1769SicH2R66Klpw/640?wx_fmt=png)

让我们先看性能，然后再看性价比。

对于性能，我们想知道，在执行Llama 2推理时，AMD和英伟达设备所具备的潜在峰值浮点性能有多少会被实际用于生成token。但并没有这方面的具体数据，因为GPU利用率和内存利用率不在基准测试中。不过我们可以根据已有数据进行推断。

AMD GPU配置了PyTorch 2.3.0框架和AMD的ROCm 6.1.2软件库和runtimes，它类似于英伟达的CUDA堆栈。在MI300X的张量核心上的峰值FP16性能为1307.4 TFlops，但这是在服务器模式下运行的（也就是使用在现实世界中看到的一种随机查询），可知在运行Llama 270B模型时，单台MI300X每秒生成2530.7个token。因此，Llama 2性能与假设峰值Flops之比为1.94。当扩展到8台MI300X设备并换用更高速的CPU，则这一比值会略微升至2.01到2.11。

我们知道，H100 GPU的HBM内存仅有80GB，启动带宽也较低，这是因为缺少HBM3和HBM3E内存导致的内存配置不足。MI300X也是类似。大家都在拉低GPU的内存配置，这样不仅是为了多卖些设备，而且也因为在GPU芯片附近堆叠HBM的难度很大，并且还有封装制造工艺的问题。

再看看英伟达测试的H100系统，每秒服务器token与峰值FP16Flops的比值是2.6或2.73，这比AMD的更好，这可能要归结于软件调整。针对H100，CUDA堆栈和TensorRT推理引擎进行了大量调整，现在你明白为什么AMD如此渴望收购人工智能咨询公司Silo AI了吧？这笔交易几周前刚刚完成。

由于切换到了HBM3E，H200的HBM内存将大幅提升至141 GB，带宽也将从3.35 TB/s提升至4.8 TB/s。于是这个比值将增至4.25，而英伟达自己的基准测试表明，只需在完全相同的Hopper GH100 GPU上添加内存容量和带宽，AI工作负载就能提升1.6至1.9倍。

MI300X应该具有什么样的内存容量和带宽才能平衡其在推理（可能还有训练）工作负载方面的浮点性能呢？这一点很难估计。但The Information给出了一个直觉估计：MI325X将具有6 TB/s的带宽（MI300为5.3 TB/s）和288 GB的HBM3E（HBM3为192 GB）—— 这是朝着正确方向迈出的一大步。另外，MI325X的FP16浮点性能似乎还是1.31 Pflops。

不过明年的MI350的浮点性能可能会大幅提升，据信其会有新迭代的CDNA架构：CDNA 4。其不同于Antares MI300A、MI300X和MI325X中使用的CDNA 3架构。MI350将转向台积电的3纳米工艺，并增加FP6和FP4数据类型。据推测，将有一个全GPU的MI350X版本，也许还有一个带有Turin CPU核心的MI350A版本。

你可能倾向于相信AMD MI300X和英伟达H100之间的性能差异是因为：一致性互连将GPU绑定到其各自UBB和HGX板上的共享内存复合体中。AMD机器上的是Infinity Fabric，而英伟达机器上的是NVSwitch。Infinity Fabric的每台GPU的双向带宽为128 GB/s，而NVLink 4端口和NVSwitch 3交换机的带宽为900 GB/s，因此英伟达机器在内存一致性节点结构上的带宽高7倍。

这可能是Llama 2工作负载性能差异的一部分原因，但The Information认为不是。原因如下。

单台MI300X的峰值性能为1.31 Pflops，比H100或H200的989.5 Tflops（FP16精度）高出32.1%，且没有稀疏矩阵重新调整，吞吐量翻倍。MI300X的内存是H100的2.4倍，但Llama 2推理工作性能仅比H100多7%，并且推理负载仅为H200的60%。根据英伟达进行的测试，相比于配备180 GB内存的Blackwell B200，该设备的工作性能仅为其23.5%。

据信B200的内存也会受限，因此根据6月份发布的英伟达路线图，B200和B100（可能）将在2025年进行内存升级，容量可能会提升到272 GB左右。H200的内存升级会领先于MI300X，后者的升级将在今年晚些时候体现在MI32X上，并会在内存方面领先B200 Blackwell Ultra六到九个月。

![图片](https://mmbiz.qpic.cn/sz_mmbiz_png/KmXPKA19gWicBdHFVJGpaaHq7hw5aQlQUev5W2hnmOUKdCO3XiaTWsAxhYTE2HX3BjOmxBELJUicHQ0fetGSSmQCg/640?wx_fmt=png)

The Information表示：「如果我们要买GPU，我们会等Hopper Ultra (H200)、Blackwell Ultra (B200+)和Antares Ultra (MI325X)。拥有更多HBM的数据中心GPU更划算。」

当然，你也可以等，用你现有的GPU参加这场生成式AI大战。

当然，上面的数据围绕着推理，至于AI训练方面的数据，AMD可能会在今年秋季发布。

**实际应用的性价比**

MI300X与英伟达的Hopper和Blackwell的性价比如何呢？

今年早些时候，英伟达联合创始人兼CEO黄仁勋在Blackwell发布后表示：这些设备的价格将在3.5至4万美元之间。Hopper GPU的价格可能为2.25万美元，具体取决于配置。黄仁勋在2023年时曾表示，一套配置完成的HGX H100系统板的价格售价20万美元。至于H200，如果单独购买，价格应该是3万美元。MI300X的售价大概是2万美元，但这基本基于猜测。具体还要看消费者和市场情况。

当然，大量购买应该还有折扣，正如黄仁勋喜欢说的那样：「买得越多，省得越多。」（The More You Buy, The More You Save）

粗略估计，将这些GPU变成服务器（两台CPU、大量主内存、网卡和一些闪存）的成本约为15万美元，并且可以插入英伟达的HGX板或AMD的UBB板来构建八路机器。考虑到之前计算的单台GPU的性能，于是这里便以这一成本的八分之一进行计算。

综合这些成本，可以看到MI300X与H100一样非常烧钱。

我们已经知道，对于Llama 270B推理任务，H100系统中平均每台GPU每秒可输出2700个token，这比MI300X好7%。H200的内存是141GB，是原来的两倍多，而其推理性能提升了56%，但GPU的价格仅上涨了33%，因此其GPU和系统层面的性价比都得到了提升。

如果B200的价格如黄仁勋所说的那样为4万美元，那么在Llama 270B测试中，其在GPU层面上每单位推理的成本将降低近一半，在系统层面上则会略多于一半。

考虑到Blackwell的短缺以及希望在给定空间和给定热范围内容纳更多AI计算的需求，因此也可以推断英伟达可能为每台
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。