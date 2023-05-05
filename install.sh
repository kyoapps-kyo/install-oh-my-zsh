#!/bin/bash
set -e

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
# 安装zsh-autosuggestions插件
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/plugins/zsh-autosuggestions
 # 使插件生效
echo "source ~/.oh-my-zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
# 安装zsh-syntax-highlighting插件
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting
 # 使插件生效
echo "source ~/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
 # 重新加载zsh配置文件
source ~/.zshrc

