# docker-tools
- 自由に作ったDockerコンテナ内で迅速にPython環境を構築するツール
  - Ubuntu, apple silicon想定
- 実行順
  ```shell
  git clone https://github.com/nkitamuraQC/docker-tools.git
  cd docker-tools
  bash create_container.sh
  bash enter_container.sh
  apt update; apt install -y sudo; sudo apt update; sudo apt install -y git
  git clone https://github.com/nkitamuraQC/docker-tools.git
  cd docker-tools
  bash make_env.sh
  ```
- Links
  - Docker環境の作成方法の参照
    - https://qiita.com/tera_shin/items/8a43e904bd15990d3129
  - VScode
    - https://qiita.com/xuqu203B/items/5f7cfe5e475f6af79ae9
  - containerから抜ける方法
    - Ctrl + P + Q
  - Dockerイメージとコンテナ削除方法
    - https://qiita.com/tifa2chan/items/e9aa408244687a63a0ae
    - Dockerコンテナ名変更
      - https://qiita.com/miwato/items/c77c9d07f5babc050250
