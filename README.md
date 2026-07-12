# 橙子解说个人博客

🎉 一个简单、免费、无需服务器的个人分享博客系统

## ✨ 功能特性

- 📝 **可视化后台编辑** - 无需代码，直接在网页编辑文章
- 🖼️ **图片上传管理** - 拖拽上传，自动存储
- 🔗 **链接管理** - 管理和分享有用的链接
- 🚀 **自动发布** - 保存即自动部署到前端
- 📱 **响应式设计** - 完美适配手机、平板、电脑
- 🆓 **完全免费** - 基于 GitHub Pages，零成本

## 🎯 快速开始

### 1️⃣ 下载主题

在仓库中创建文件 `themes/.gitmodules`（可选），或在本地运行：

```bash
git clone https://github.com/LukasJoswiak/etch.git themes/etch
```

### 2️⃣ 启用 GitHub Pages

1. 进入仓库 **Settings**
2. 找到 **"Pages"** 选项
3. **Source** 选择 **"Deploy from a branch"**
4. **Branch** 选择 **"gh-pages"** 和 **"/(root)"**
5. 点击 **Save**

等待 1-2 分钟，GitHub Actions 会自动构建并发布！

### 3️⃣ 访问你的博客

- **前端展示**：https://xietianzhou888-cmd.github.io/
- **后台管理**：https://xietianzhou888-cmd.github.io/admin/

---

## 📖 后台管理使用

### 登录后台

1. 访问 https://xietianzhou888-cmd.github.io/admin/
2. 点击 **"Login with GitHub"**
3. 授权访问
4. 开始编辑！

### 创建文章

1. 点击菜单中的 **"文章"**
2. 点击 **"新建"** 按钮
3. 填写：
   - **标题** ⭐ 必填
   - **描述** - 文章摘要
   - **发布日期** - 选择日期时间
   - **标签** - 多个用逗号分隔
   - **分类** - 文章分类
   - **封面图** - 上传图片
   - **内容** - 支持 Markdown
4. 点击 **"发布"**

### 上传图片

在文章编辑中：
- 点击图片按钮上传
- 图片自动保存到 `/static/images/`

---

## 🛠️ 文件结构

```
hugo-share-blog/
├── hugo.toml                    # 博客配置
├── .github/workflows/gh-pages.yml  # 自动部署脚本
├── content/
│   ├── posts/                   # 文章（由后台自动创建）
│   └── _index.md
├── static/
│   ├── admin/                   # Decap CMS 后台
│   │   ├── index.html
│   │   └── config.yml
│   └── images/                  # 上传的图片
├── layouts/                     # 页面模板
│   ├── index.html               # 首页
│   └── _default/
│       ├── list.html            # 列表页
│       └── single.html          # 文章页
└── themes/                      # Hugo 主题
```

---

## ⚙️ 自定义配置

### 修改博客名称

编辑 `hugo.toml`：

```toml
title = "你的博客名"

[params]
author = "你的名字"
description = "博客描述"
customAbout = """
你的个人介绍
支持多行
"""
```

### 更换主题

1. 选择主题：https://themes.gohugo.io/
2. 删除 `themes/etch` 文件夹
3. 添加新主题：
   ```bash
   git submodule add 主题地址 themes/新主题名
   ```
4. 修改 `hugo.toml` 中的 `theme = "新主题名"`

---

## ❓ 常见问题

### 文章发布后没显示？
- 检查仓库 **Actions** 标签的构建状态
- 清除浏览器缓存
- 等待 2-3 分钟刷新

### 后台登录出错？
- 确保仓库是公开（Public）
- 确保有 GitHub 账户权限
- 重试登录

### 如何删除文章？
- 后台找到文章，点击菜单删除即可

---

## 📚 更多资源

- [Hugo 文档](https://gohugo.io/documentation/)
- [Decap CMS 文档](https://decapcms.org/docs/intro/)
- [GitHub Pages 帮助](https://docs.github.com/pages)

---

**祝你的博客运营顺利！🚀**
