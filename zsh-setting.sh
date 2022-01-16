#!/bin/sh

sudo apt update
sudo apt-get update

# zsh 설치
sudo apt install zsh -y && chsh -s `which zsh`

zsh

curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# zsh 플러그인 설치

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions

# zsh 터미널 설정 복사
cp ./.zshrc ~/.zshrc

sudo apt install vim