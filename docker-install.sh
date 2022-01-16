#!/bin/sh

# 이전 버전 도커 삭제
sudo apt-get remove docker docker-engine docker.io containerd runc

# apt 패키지 업데이트
sudo apt-get update -y

# 필요한 패키지 설치
# ca 인증서, gpg
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# 도커 공식 GPG 키 추가
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# apt source list에 repository를 추가
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io