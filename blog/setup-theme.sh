#!/bin/bash

# 进入正确的博客目录
cd /Users/liangshao/Repository/shaoliang123456/blog

# 删除错误位置的 themes 目录
rm -rf ../themes

# 删除博客目录下可能存在的旧 themes 目录
rm -rf themes

# 确保 node_modules 中有主题
npm install hexo-theme-next

# 创建正确的符号链接
ln -s ../node_modules/hexo-theme-next themes/next

# 验证设置
echo "验证主题安装："
ls -la themes/
ls -la themes/next/layout/
