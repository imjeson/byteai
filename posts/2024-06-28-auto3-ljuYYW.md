---

title: '发布Hopsworks 4.0 – 推出AI Lakehouse'
date: 2024-06-29
author: ByteAILab

---

团队很高兴宣布即将推出的版本，Hopsworks 4.0。![图片](https://ai-techpark.com/wp-content/uploads/2024/06/Releasing-960x540.jpg){ width=60% }

---
这是第一个用于构建批量、实时和大语言模型（LLM）AI系统的统一平台。基于Hopsworks在面向AI的数据领域的领导地位，我们正在为Lakehouse增加关于实时数据的新功能，包括RAG特征存储和向量索引，本机Python访问（使用ArrowFlight）以及LLMs的微调。我们将Hopsworks 4.0 称为AI Lakehouse。

此版本将很快提供的功能和更新旨在帮助用户在任何规模上构建AI系统，支持最具挑战性的工作负载（从PB级到毫秒级）。

Hopsworks 4.0的关键影响：
高性能和可用性 - Hopsworks的使命是保护客户数据的安全并始终可用。它被设计成可以经受硬件和网络故障，并且是唯一提供跨区域复制的特征存储。在数据中心停机的情况下，用户可以无缝切换到另一个地理区域，而不会丢失任何数据。 Kubernetes部署 - Hopsworks现在可以使用Helm Charts进行部署、维护和升级。您可以在任何地方部署，从云平台到无网络连接的本地部署。Hopsworks查询服务 - 为Python客户端提供的读取数据的吞吐量可比Databricks、Sagemaker和Vertex AI高达45倍。特征监控支持 - 允许用户追踪数据随时间如何变化，并将其与用于训练特定模型版本的数据进行比较。矢量搜索/嵌入 - 增加了对向量和相似性搜索的支持，以帮助用户通过利用RAG LLM轻松构建GenAI应用程序。负责数据管理 - Hopsworks可以部署在任何能够监视其处理的数据以获得更好输出的私有或公共基础设施上，版本化所有资产以能够理解所有血统，并能够轻松从一个模型回滚到另一个模型，以应对问题。

“我们很高兴地宣布Hopsworks 4.0，这是我们迄今为止最大最具创新性的发布。4.0意味着对构建AI系统带来的创新性变革，无论是批处理、实时还是LLMs应用，都适用于AI Lakehouse基础设施。”- Jim Dowling，Hopsworks首席执行官。
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。