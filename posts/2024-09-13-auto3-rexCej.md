---
title: 'Stardog发布由NVIDIA加速的“SKATHE”'
date: 2024-09-14
author: ByteAILab

---

Stardog宣布推出了SKATHE，这是一个新的私人GPU云设施，由NVIDIA加速，位于弗吉尼亚州阿什本。![图片](https://ai-techpark.com/wp-content/uploads/2024/09/Stardog-960x540.jpg){ width=60% }

---
SKATHE提供了一个专用的解决方案，用于处理GPU计算，并旨在增强Stardog Voicebox的性能，该公司的100%无幻觉的AI数据助手。
SKATHE提供了一个混合云基础设施，平衡了GPU和CPU的工作负载，其中CPU处理位于AWS和Azure上。这一举措恰逢企业正在重新评估云操作的成本效益平衡，尤其是在过去的二十年中进行了重大投资，并且最近财富1000家公司对云支出发起了反击。
“我们投资于SKATHE是因为我们有一个双重任务，即为客户提供世界一流的用户体验，同时也为自己建立世界一流的单元经济”Stardog的创始人兼CEO Kendall Clark说道。“SKATHE让我们能够通过为我们的公司提供灵活性和盈利能力来实现这两点。”
SKATHE使用NVIDIA Triton Inference Server搭配NVIDIA TensorRT-LLM，支持装备NVIDIA GH200 Grace Hopper Superchips的服务器。与NVIDIA的全套加速软件和计算集成使得在各种深度学习和机器学习框架中快速部署Voicebox的AI模型集成非常简单和快速。
TensorRT-LLM库增强了在NVIDIA GPU上的推断性能，具有动态inflight批处理和掩码多头注意力等先进优化，以获得优越的延迟和吞吐量。GH200 Grace Hopper Superchip集成了NVIDIA H200 Tensor Core GPU和一个72核Grace CPU，与NVIDIA A100 Tensor Core GPU相比，提供高达六倍的推断速度，确保高性能和稳健性。
为了快速增长，Stardog预计将SKATHE设施扩展到战略市场，包括纽约市、旧金山湾区、德克萨斯州、伦敦和德国。公司将全球扩展基础设施，并增加计算能力，以支持额外的GPU密集型任务，如知识图问答、图神经网络（GNN）、向量嵌入、连续微调和模型训练。
“随着我们将SKATHE全球化，我们专注于地理和计算扩展，”Clark补充说。“我们看到通过将SKATHE扩展到一个全球私人GPU云，包括超出模型推断之外的新计算服务的增长机会。”

---
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。