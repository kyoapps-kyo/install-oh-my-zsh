#!/bin/bash
set -e

CURRENT_DIR=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
source ${CURRENT_DIR}/common/variables.sh

# 安装zsh
echo -e "\n\n${GREEN}安装zsh......${RESET}\n\n"
sudo apt-get install -y zsh curl

if [ -d ~/.oh-my-zsh ]; then
    echo -e "${RED}oh-my-zsh 已经存在......${RESET}\n\n"
else
    echo -e "${GREEN}安装oh-my-zsh......${RESET}"
    # 安装oh-my-zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi


# echo "设置zsh为默认shell"
# 设置zsh为默认shell
# chsh -s $(which zsh)