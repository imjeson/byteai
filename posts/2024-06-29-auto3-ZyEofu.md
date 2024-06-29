---

title: '发布 Hopsworks 4.0 – 介绍 AI Lakehouse'
date: 2024-06-30
author: ByteAILab

---

团队在 Hopsworks 很高兴地宣布即将发布的 Hopsworks 4.0 版本。![图片](https://ai-techpark.com/wp-content/uploads/2024/06/Releasing-960x540.jpg){ width=60% }

---
这是第一个统一平台，用于构建批处理、实时和大语言模型（LLM）人工智能系统。基于 Hopsworks 在数据AI方面的领导地位，我们正在为 Lakehouse 添加围绕 RAG（特征存储和向量索引）的实时数据、原生 Python 访问（使用 ArrowFlight）以及 LLM 的微调等新功能。我们将 Hopsworks 4.0 称为 AI Lakehouse。
这个即将普遍可用的发布版本将整合功能和更新，旨在帮助用户在任何规模上构建AI系统，支持最具挑战性的工作负载（从PB到毫秒）。
Hopsworks 4.0 的关键影响：
高性能与可用性 – Hopsworks 的使命是确保客户数据安全且始终可用。它经过设计，能够在硬件和网络故障时保持运行，并且是唯一提供跨区域复制功能的特征存储。在数据中心发生故障时，用户可以无缝切换到另一个地理区域，而无需任何数据丢失。
Kubernetes 部署 – 现在可以使用 Helm Charts 部署、维护和升级 Hopsworks。您可以在任何地方部署，无论是云平台还是离线的企业内部部署。
Hopsworks 查询服务 – 当从 Lakehouse 读取数据时，为 Python 客户提供高达 45 倍的吞吐量，相比之下，Databricks、Sagemaker 和 Vertex AI 的性能更佳。
特征监控支持 – 允许用户跟踪其数据随时间变化的情况，并将其与用于训练特定模型版本的数据进行比较。
向量搜索 / 嵌入 – 增加了对向量和相似搜索的支持，以帮助用户通过利用 RAG LLM 轻松构建 GenAI 应用程序。
负责的数据管理 – 可以在可以监视其处理的数据的任何私有或公共基础设施上部署 Hopsworks，以获取更好的输出，版本化所有资产以便了解所有血脉相承情况，并且可以轻松从一个模型回滚到另一个模型，如果出现问题的话。
“我们很高兴宣布 Hopsworks 4.0，这是我们迄今为止最大、最具创新性的发布。4.0 意味着为构建 AI 系统带来了具有游戏改变性质的创新，无论是批处理、实时还是 LLM 应用，都通过 AI Lakehouse 基础设施。” – Jim Dowling，Hopsworks CEO。 

---
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。