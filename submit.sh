#!/bin/bash
python3 script/ai_news_type6.py

# 设定变量
REMOTE="origin"  # 远程仓库名称
BRANCH="main"    # 要推送的分支名称
COMMIT_MESSAGE=$1  # 从命令行参数获取提交信息

# 如果没有提供提交信息，则使用当前时间作为提交信息
if [ -z "$COMMIT_MESSAGE" ]; then
  COMMIT_MESSAGE="Commit on $(date)"
fi

# 添加所有变更到暂存区
git add .

# 提交变更
git commit -m "$COMMIT_MESSAGE"

# 推送到远程仓库
git push $REMOTE $BRANCH

echo "Changes pushed to $REMOTE/$BRANCH"
