#!/bin/bash
# python3 script/ai_news_type6.py
# python3 script/ai_news_type7.py

git pull
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

######################Job 2
# 获取当前日期、前一天和后一天的日期
current_date=$(date '+%Y-%m-%d')
yesterday=$(date -d '-1 day' '+%Y-%m-%d')
tomorrow=$(date -d '+1 day' '+%Y-%m-%d')

# 源目录和目标目录
source_dir="/home/hello/byteai/posts"
dest_dir="/home/hello/gptnb/source/_posts"

# 拷贝文件
for date in "$yesterday" "$current_date" "$tomorrow"
do
    find "$source_dir" -type f -name "${date}*.md" -exec cp {} "$dest_dir" \;
done

# 输出完成信息
echo "Files copied successfully."

cd /home/hello/gptnb

git add .

# 提交变更
git commit -m "$COMMIT_MESSAGE"

# 推送到远程仓库
git push $REMOTE $BRANCH
