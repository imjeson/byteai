---
title: '五年后的今天，训练GPT-2只需不到700刀、24小时，Karpathy又整新活'
date: 2024-07-14
author: ByteAILab

---

论老黄卖铲子的技术含量。

2019 年 2 月，OpenAI 发布了 GPT-2，因为在文本生成上的优异表现，以及对于预训练 Transformer 架构的充分运用，被认为是如今大预言模型的「始祖」。

---


五年后的今天，训练 GPT-2 这样 15 亿参数的大模型，只需要花费 672 美元，在一个 8XH100 的 GPU 节点上跑 24 个小时就可以搞定了。

本周四，前特斯拉 Autopilot 负责人、OpenAI 科学家 Andrej Karpathy 在他纯 C 语言复现 GPT-2 大模型的项目「llm.c」的最新进展中分享了他的训练心得：

令人难以置信的是，由于计算硬件（英伟达 H100 GPU）、软件（CUDA、cuBLAS、cuDNN、FlashAttention 等）和数据质量（例如 FineWeb-Edu 数据集）的改进，过去 5 年间，大语言模型的训练成本大幅下降。Karpathy 表示，对于此次实践，算法遵循 GPT-2/3 论文基本保持原样不变。

当年 OpenAI 训练 GPT-2 花费了多少钱？这是个至今仍然未知的数字。Karpathy 粗略地估算认为是这回成本的 100 倍，大概要到 10 万美元的量级。

基本相同的任务，运行效率却有天壤之别，这体现了近几年来 AI 领域和算力基础设施的飞速发展。

由于 llm.c 是在 C/CUDA 中 GPT 训练的直接实现，因此要求其实很少 —— 不需要 conda 环境、Python 解释器、pip 安装等。如果你也要尝试，可以启动云 GPU 节点（例如在 Lambda 上），可选择安装 NVIDIA cuDNN、NCCL/MPI，下载 .bin 数据分片，编译并运行，几分钟后即可开始。

然后，你就可以等待 24 小时，然后欣赏通用大语言模型的能力了。

「对于 llm.c 项目来说，这是一个非常好的节点。因为整个项目都是从我考虑为教育视频重现 GPT-2 开始的。我遇到一些 PyTorch 的东西时卡住了，然后愤怒地退出，再用 C/CUDA 从头开始编写整个项目，」Karpathy 表示。「这让我踏上了比预想更长的旅程。但它非常有趣，我学到了更多的 CUDA，一路上结交了朋友，现在的 llm.c 真的很棒。它有大约 5000 行代码，编译和步骤非常快，几乎不需要等待。它具有恒定的内存占用，它以混合精度进行训练，使用 NNCL 分布在多节点上。它是按位确定性的，并且徘徊在 MFU 的 50% 左右。所以它很 ok。」

对于 llm.c 项目而言，越做似乎挖得坑越大。Andrej Karpathy 对目前的运行结果仍然不是 100% 满意 —— 他认为评估应该更好，训练应该更稳定，尤其是在较长时间运行的较大模型尺寸下。

他还预告了一些有趣的新方向：fp8（即将推出）、推理、微调、多模态（VQVAE 等）、更现代的架构（Llama/Gemma）。llm.c 的目标仍然是为功能齐全的 LLM 智能体提供简单、最小、干净的训练堆栈，直接使用 C/CUDA，并包含配套的教育材料，可以让许多初学者快速了解这个令人敬畏的领域。

说完了这么多，该看看 24 小时训练 GPT-2 的成果了：Karpathy 使用更长的 400B token GPT-2 运行（从 33B token 增加），效果良好，直到 330B（达到 61% HellaSwag，远高于这个大小的 GPT-2 和 GPT-3），然后在这个图之后不久爆炸了。目前作者还在继续进行研究。

接下来看详细项目介绍。

GitHub 地址：https://github.com/karpathy/llm.c/discussions/677

训练。使用 llm.c 训练 GPT-2 非常简单，因为它是用 C/CUDA 编写的，因此不需要 minconda、Python、PyTorch 等。你只需一个 8XH100 GPU box，Karpathy 建议从 Lambda Labs 购买一个。

不过 llm.c 在计算上很灵活，如果你只有 1 个 GPU，仍然可以训得 GPT-2，这时你需要等待 8 天而不是 1 天。如果你有 16 个 GPU（例如使用新的 Lambda 1 Click Clusters），则能够训练多节点，这时只需等待 12 小时。启动节点后，以下是训练 GPT-2 的完整说明：

# install cudnn so we can use FlashAttention and run fast (optional)
# https://developer.nvidia.com/cudnn-downloads
# for me, CUDA 12 (run `nvcc --version`) running on Linux x86_64 Ubuntu 22.04
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-keyring_1.1-1_all.deb
sudo dpkg -i cuda-keyring_1.1-1_all.deb
sudo apt-get update
sudo apt-get -y install libcudnn9-dev-cuda-12
# "install" cudnn-frontend to ~/
git clone https://github.com/NVIDIA/cudnn-frontend.git
# install MPI (optional, if you intend to use multiple GPUs)
# (you might also have to install NVIDIA NCCL if it doesn't come with your setup)
sudo apt -y install openmpi-bin openmpi-doc libopenmpi-dev
# download and enter llm.c repo
git clone https://github.com/karpathy/llm.c.gitcd llm.c
# download the "starter pack" (~1GB download)
# contains GPT2-124M weights (used in tests), tokenizer, eval data .bin s
./dev/download_starter_pack.sh
# download the training dataset (FineWeb-Edu 100B token) .bin data shards
# note: this is a total of 1001 data shards. If you only want to test things
# out and don't want to do an actual run, feel free to append the number of
# training shards to download (e.g. for just 10 shards: ./edu_fineweb.sh 10)
# the full dataset is ~200GB, we can store it here in dev/data directory.
cd dev/data
./edu_fineweb.sh
# compile (~1 min 1st time for cuDNN mostly, few sec from then on)
cd ../../
make train_gpt2cu USE_CUDNN=1
# and train! (wait 24 hours here)
mpirun -np 8 ./train_gpt2cu \
    -i "dev/data/edu_fineweb100B/edu_fineweb_train_*.bin" \
    -j "dev/data/edu_fineweb100B/edu_fineweb_val_*.bin" \
    -o "log_gpt2_1558M" \
    -v 250 -s 300000 -g 384 \
    -h 1 \
    -b 16 -t 1024 \
    -d 1048576 \
    -r 0 \
    -z 1 \
    -c 0.1 \
    -k "cosine" \
    -l 0.0006 \
    -q 0.1 \
    -u 700 \
    -n 2000 \
    -x 32000 \
    -ge 1 \
    -y 1 \
    -e "d48"
开始优化：

num_parameters: 1557686400 => bytes: 3115372800
allocated 2971 MiB for model parameters
batch_size B=16 * seq_len T=1024 * num_processes=8 and total_batch_size=1048576
=> setting grad_accum_steps=8
created directory: log_gpt2_1558M
allocating 40409 MiB for activations
val loss 11.129390
allocating 2971 MiB for parameter gradients
allocating 742 MiB for AdamW optimizer state m
allocating 742 MiB for AdamW optimizer state v
allocating 742 MiB for master copy of params
step    1/32000 | loss 11.133732 (+nanz)| norm 52.9732 (+nanz)| lr 8.57e-07 | 3056.36 ms | 42.6% bf16 MFU | 343080 tok/s
step    2/32000 | loss 10.539388 (+nanz)| norm 43.5996 (+nanz)| lr 1.71e-06 | 2747.19 ms | 47.4% bf16 MFU | 381690 tok/s
step    3/32000 | loss 9.894109 (+nanz)| norm 23.2229 (+nanz)| lr 2.57e-06 | 2753.25 ms | 47.3% bf16 MFU | 381259 tok/s
step    4/32000 | loss 9.566241 (+nanz)| norm 28.4920 (+nanz)| lr 3.43e-06 | 2741.47 ms | 47.5% bf16 MFU | 381690 tok/s
step    5/32000 | loss 9.482848 (+nanz)| norm 23.7817 (+nanz)| lr 4.29e-06 | 2752.07 ms | 47.3% bf16 MFU | 381507 tok/s
step    6/32000 | loss 9.332832 (+nanz)| norm 15.9113 (+nanz)| lr 5.14e-06 | 2751.01 ms | 47.3% bf16 MFU | 381431 tok/s
step    7/32000 | loss 9.165650 (+nanz)| norm 10.5941 (+nanz)| lr 6.00e-06 | 2753.03 ms | 47.3% bf16 MFU | 381327 tok/s
step    8/32000 | loss 9.132234 (+nanz)| norm 16.2733 (+nanz)| lr 6.86e-06 | 2748.91 ms | 47.3% bf16 MFU | 381348 tok/s
step    9/32000 | loss 9.097384 (+nanz)| norm 12.1342 (+nanz)| lr 7.71e-06 | 2748.73 ms | 47.3% bf16 MFU | 381367 tok/s
step   10/32000 | loss 9.072879 (+nanz)| norm 10.5923 (+nanz)| lr 8.57e-06 | 2749.40 ms | 47.3% bf16 MFU | 381369 tok/s
...

每一步大约需要 2.75 秒，共有 32000 步，所以现在我们等待 24 小时左右。在每一步中，训练运行都会占用约 100 万个 FineWeb-EDU token（这些来自互联网的教育网页），并更新模型的 15.58 亿个权重，使其能够更好地预测序列中的下一个 token。最后将总共处理 32000 * 1048576 = 33.6B 个 token。随着更好地预测下一个 token，损失会下降。范数将稳定在 0.1-1 左右，学习率在前面几步预热。模型 flops 利用率 (MFU) 约为 50%，非常高效。

等待 24 小时后，就可以使用 dev/vislog.ipynb jupyter 笔记本可视化 main.log 日志文件。为此，你还需要安装 Python 和 matplotlib。

参数指南。OpenAI 发布的 GPT-2 包含模型权重，但细节很少；而 GPT-3 版本没有权重，但细节很多。因此，在许多情况下，我们遵循 GPT-3 论文超参数，因为 GPT-2 论文的信息非常少。具体参见原项目。

内存指南。大多数人可能面临的最大限制是他们的 GPU 没有 80GB。没关系，你仍然可以运行上面的所有内容，只是运行速度会更慢。因此如果模型不适配，你会怎么做？最重要的是微批大小 - b。尝试减小它，但将其保持在合适的数字，例如 16 → 8 → 4 → 2 → 1。从那里开始，尝试使用重计算设置 -r，即 0（最快且有大量内存）、1（稍微慢一点，但节省大量内存）或 2（稍微慢一点，节省较少内存）。

你可以做的下一件事是禁用 fp32 中的主权重，可以使用 - w 0 （默认值 1）来执行此操作。我们不会维护 fp32 参数副本。根据经验，在之前的几次运行中，这似乎没问题，可能是因为使用了随机舍入。如果还不适合，则可以尝试使用 -t  来减少最大序列长度，默认值为 1024，你可以将其降低到 512、256 等。但现在你会让模型变得更糟，因为它的最大注意力跨度正在减少。

代码。Karpathy 对 llm.c 略有偏爱，认为它非常漂亮：

- 它只需要基本的 CUDA 依赖项即可运行。
- 它是 C/CUDA 中直接、最小且易读的实现。llm.c 共有约 5,000 行 C/CUDA 代码。这里尝试主要使用 C，而不是 C++，以保持简单。神经网络训练只是对单个浮点数组进行相同的简单算术运算（如 +、-、、/）的一个 while 循环，它实际上不应该那么复杂。
- 它编译和运行非常快（几秒钟），因此可以进行更多步进和更短等待。
- 它在开始时一次性分配其所有 GPU 内存，从那时起在训练期间具有完全恒定的内存占用。因此，一旦开始步进，就可以在剩余的运行中表现良好并且不会内存用完（OOM）。
- 它是按位（bitwise）确定的。
- 它非常高效，略低于～50% 的 MFU。

主要入口点和大部分代码位于文件 train_gpt2.cu 中。它包含 GPT-2 模型定义和约 2,000 LOC 的训练 loop，并从 llmc 目录导入了一堆带有各种实用程序和各个层实现的辅助文件。最后 cloc llmc
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。