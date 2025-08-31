#!/bin/bash

echo "=== 检查目录结构 ==="
echo "博客根目录："
pwd

echo -e "\n=== 查找所有 themes 目录 ==="
find /Users/liangshao/Repository/shaoliang123456/ -name "themes" -type d 2>/dev/null

echo -e "\n=== 检查 package.json 位置 ==="
find /Users/liangshao/Repository/shaoliang123456/ -name "package.json" 2>/dev/null

echo -e "\n=== 检查 node_modules 中的主题 ==="
ls -la node_modules/ | grep hexo-theme

echo -e "\n=== 检查主题链接状态 ==="
if [ -L "themes/next" ]; then
    echo "themes/next 是符号链接，指向："
    readlink themes/next
else
    echo "themes/next 不是符号链接或不存在"
fi
