#!/bin/bash
set -e

CURRENT_DIR=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
source ${CURRENT_DIR}/common/variables.sh

# 安装zsh
echo -e "${GREEN}安装zsh......${RESET} /n"
sudo apt-get install -y zsh curl

if [ -d ~/.oh-my-zsh ]; then
    echo -e "${RED}oh-my-zsh 已经存在......${RESET} /n"
else
    echo -e "${GREEN}安装oh-my-zsh......${RESET} /n"
    # 安装oh-my-zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi


# echo "设置zsh为默认shell"
# 设置zsh为默认shell
# chsh -s $(which zsh)

echo -e "${GREEN}安装autosuggestions && highlighting插件${RESET}"

if [ -d ~/.oh-my-zsh/plugins/zsh-autosuggestions ]; then
    echo "zsh-autosuggestions exists."
else
    # 安装zsh-autosuggestions插件
    git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/plugins/zsh-autosuggestions
     # 使插件生效
    echo "source ~/.oh-my-zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
fi


if [ -d ~/.oh-my-zsh/plugins/zsh-syntax-highlighting ]; then
    echo "zsh-syntax-highlighting exists."
else
    # 安装zsh-syntax-highlighting插件
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting
    # 使插件生效
    echo "source ~/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
fi

 # 重新加载zsh配置文件
echo "请执行source ~/.zshrc"