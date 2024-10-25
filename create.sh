#!/bin/bash

# コンテナ名（任意で変更可能）
CONTAINER_NAME="ubuntu_container"

# Dockerコンテナを作成し、バックグラウンドで実行
docker run -d --name $CONTAINER_NAME ubuntu:latest tail -f /dev/null
