# sanglaoge.github.io — 个人网站发布仓库

> 公开站点（GitHub Pages）。**内容是成品，源文件在 `~/valve/AGI共学笔记/`**，别在这里改源头。

## 定位

- 线上地址：https://sanglaoge.github.io/
- 概念馆页面源目录：`~/valve/AGI共学笔记/html(可视化笔记)/concepts/`
- 首页 `index.html`：**手工维护**，发布脚本不碰它
- 骨架样式 `concepts/assets/base.css`：全站共用，**禁改**（改一处全站变样）

## 常用命令

- 概念馆一键发布：`./发布.sh`（rsync 同步 concepts → commit → push → Pages 自动部署）
- 手改首页后发布：`git add index.html && git commit -m "首页：..." && git push`
- 无构建、无测试、无包管理器

## 铁律

1. **数字以 AGI共学笔记 为真源**：概念总数、各家族条数必须和 `concepts(概念库)/学习账本.md` 一致；改这边就要回头对齐那边
2. 首页 chips 与门户卡片改完，同步改 `AGI共学笔记/index.md` 与 `html(可视化笔记)/concepts/index.html`
3. 公开仓库：不出现私人联系方式、客户素材、内部数据
4. 发布前先看 `git status`，确认工作区只剩本次要发的内容
