#!/bin/bash

# 获取当前日期，格式为YYYY-MM-DD
current_date=$(date +%Y-%m-%d)

# 设置文件名，包含当前日期
filename="${current_date}.md"

# 创建Markdown文件并写入内容
cat << EOF > ./posts/$filename
---
title: ''
date: $current_date
author: ByteAILib
---

content
![图片](url){ width=50% }

---
EOF

echo "文件已创建：$filename"

