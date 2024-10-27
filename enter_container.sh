#!/bin/bash

# コンテナ名（任意で変更可能）
CONTAINER_NAME="ubuntu_container"

# コンテナの中に入る
docker exec -it $CONTAINER_NAME /bin/bash
