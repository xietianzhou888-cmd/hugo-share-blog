#!/bin/bash

# 橙子解说个人博客 - 快速部署脚本

echo "🚀 开始部署橙子解说个人博客..."
echo ""

# 1. 检查 git 是否初始化
if [ ! -d ".git" ]; then
    echo "📦 初始化 Git 仓库..."
    git init
    git remote add origin https://github.com/xietianzhou888-cmd/hugo-share-blog.git
else
    echo "✅ Git 仓库已存在"
fi

echo ""
echo "📥 下载 Hugo 主题..."
if [ ! -d "themes/etch" ]; then
    git submodule add https://github.com/LukasJoswiak/etch.git themes/etch
    git config -f .gitmodules --get-regexp path | while read path_line; do
        path=${path_line#*\.path=}
        url_line=$(git config -f .gitmodules --get-regexp url | grep "${path%/*}")
        url=${url_line#*\.url=}
        git clone --depth=1 "$url" "$path"
    done
else
    echo "✅ 主题已存在"
fi

echo ""
echo "📤 提交文件到 GitHub..."
git add .
git commit -m "初始化博客系统：Hugo + Decap CMS"
git branch -M main
git push -u origin main

echo ""
echo "✅ 部署完成！"
echo ""
echo "📝 后续步骤："
echo "1. 访问 GitHub 仓库: https://github.com/xietianzhou888-cmd/hugo-share-blog"
echo "2. 进入 Settings → Pages"
echo "3. Source 选择 'Deploy from a branch'"
echo "4. Branch 选择 'gh-pages' 和 '/(root)'"
echo "5. 等待部署完成（约 1-2 分钟）"
echo ""
echo "🎉 完成后访问:"
echo "   前端页面: https://xietianzhou888-cmd.github.io/"
echo "   后台管理: https://xietianzhou888-cmd.github.io/admin/"
echo ""
