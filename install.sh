#!/bin/bash
set -e

CURRENT_DIR=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
source ${CURRENT_DIR}/../common/common.sh

[ $(id -u) != "0" ] && { ansi -n --bold --bg-red "请用 root 账户执行本脚本"; exit 1; }

# handle_error () {
#     echo "Error occurred in script at line: ${1}"
#     echo "Exiting..."
#     exit 1
# }
# trap 'handle_error $LINENO' ERR

# # 安装zsh
# echo "安装zsh"
# sudo apt-get install -y zsh curl

# echo "安装oh-my-zsh"
# # 安装oh-my-zsh
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# echo "设置zsh为默认shell"
# # 设置zsh为默认shell
# chsh -s $(which zsh)

echo "安装autosuggestions && highlighting插件"

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