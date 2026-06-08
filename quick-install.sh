#!/bin/bash
set -e

## 克隆仓库到本地
echo "clone repository..."
git clone --depth=1 https://github.com/xyhelper/chatgpt-file-deletion-deploy.git chatgpt-file-deletion

## 进入目录
cd chatgpt-file-deletion

docker compose pull
docker compose up -d

## 提示信息
echo "服务启动成功，请访问 http://localhost:9900"
echo "地址 http://localhost:9900/gpt.html"
