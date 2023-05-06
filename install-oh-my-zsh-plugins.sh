#!/bin/bash
set -e
CURRENT_DIR=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
source ${CURRENT_DIR}/common/variables.sh


echo -e "\n\n${GREEN}...安装autosuggestions && highlighting插件...${RESET}\n\n"

if [ -d ~/.oh-my-zsh/plugins/zsh-autosuggestions ]; then
    echo -e "${RED}...zsh-autosuggestions exists...${RESET}\n\n"
else
    # 安装zsh-autosuggestions插件
    git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/plugins/zsh-autosuggestions
     # 使插件生效
    echo "source ~/.oh-my-zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
fi


if [ -d ~/.oh-my-zsh/plugins/zsh-syntax-highlighting ]; then
    echo -e "${RED}...zsh-syntax-highlighting exists...${RESET}\n\n"
else
    # 安装zsh-syntax-highlighting插件
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting
    # 使插件生效
    echo "source ~/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
fi

 # 重新加载zsh配置文件
echo -e "${BLUE_LIGHT}请执行: source ~/.zshrc${RESET}"