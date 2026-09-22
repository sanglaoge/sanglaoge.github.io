#!/bin/zsh
# 概念馆一键发布：把 vault 里的 concepts 同步到本仓库并推送
# 用法：终端跑 ./发布.sh，或对铁柱说「发到我的github网站」
# 注意：只同步 concepts/ 目录；首页 index.html 是手工维护的，不随脚本动
set -euo pipefail
SRC="/Users/sanglaoge/valve/AGI共学笔记/html(可视化笔记)/concepts"
cd "$(dirname "$0")"
rsync -a --delete "$SRC/" "./concepts/"
git add concepts
if git diff --cached --quiet; then
  print "没有变化，无需发布"
else
  git commit -m "概念馆同步：$(date +%Y-%m-%d\ %H:%M)"
  git push
  print "已发布 → https://sanglaoge.github.io/concepts/"
fi
