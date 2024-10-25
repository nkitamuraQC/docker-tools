#!/bin/bash

# エラー発生時にスクリプトを停止
set -e

# Miniforgeのインストールパス
INSTALL_DIR=${INSTALL_DIR:-"/opt/conda"}

# ARM64アーキテクチャ用のMiniforgeのインストーラURL
MINIFORGE_URL="https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Linux-aarch64.sh"

# 必要なパッケージのインストール
echo "Installing necessary packages..."
sudo apt-get update -y
sudo apt-get install -y \
    wget \
    bzip2 \
    ca-certificates \
    curl \
    git

# Miniforgeのインストール
echo "Downloading and installing Miniforge..."
wget $MINIFORGE_URL -O /tmp/miniforge.sh
chmod +x /tmp/miniforge.sh
/tmp/miniforge.sh -b -p $INSTALL_DIR

# シェルにcondaを追加
export PATH="$INSTALL_DIR/bin:$PATH"
echo 'export PATH="'"$INSTALL_DIR"'/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

# Conda環境のセットアップとパッケージのインストール
echo "Setting up conda environment and installing packages..."
conda init
conda install -y python=3.9 numpy pandas

# インストール完了メッセージ
echo "Miniforge and Python environment setup complete!"
echo "You may need to restart your terminal or run 'source ~/.bashrc' to start using conda."
