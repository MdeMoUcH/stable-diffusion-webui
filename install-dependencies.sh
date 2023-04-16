#!/bin/bash

#Script para instalar las dependencias en ubuntu 23.04

sudo apt-get update

sudo apt-get install build-essential wget curl git python3 python3-venv
	\ libffi-dev openssl libssl-dev liblzo2-dev libpam0g-dev zlib1g-dev
	\ zlib1g libbz2-dev liblzma-dev libncurses5-dev libreadline6-dev
	\ libsqlite3-dev libgdbm-dev liblzma-dev lzma lzma-dev libgdbm-dev
	\ libncursesw5-dev libreadline-dev libxml2-dev libxmlsec1-dev llvm 
	\ tk-dev xz-utils install libgdbm-compat-dev

#descargar python 10
wget https://www.python.org/ftp/python/3.10.9/Python-3.10.9.tgz
tar-xvzf Python-3.10.9.tgz
cd Python-3.10.9
./configure --enable-optimizations
make
sudo make altinstall
cd ..


#git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui

