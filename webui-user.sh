#!/bin/bash
#########################################################
# Uncomment and change the variables below to your need:#
#########################################################

# Install directory without trailing slash
#install_dir="/home/$(whoami)"
install_dir="/data/stable-diffusion"

# Name of the subdirectory
#clone_dir="stable-diffusion-webui"

# Commandline arguments for webui.py, for example: export COMMANDLINE_ARGS="--medvram --opt-split-attention"
#export COMMANDLINE_ARGS=""

# python3 executable
#python_cmd="python3"
python_cmd="python3.10"

# git executable
#export GIT="git"

# python3 venv without trailing slash (defaults to ${install_dir}/${clone_dir}/venv)
#venv_dir="venv"

# script to launch to start the app
#export LAUNCH_SCRIPT="launch.py"

# install command for torch
#export TORCH_COMMAND="pip install torch==1.12.1+cu113 --extra-index-url https://download.pytorch.org/whl/cu113"
#export TORCH_COMMAND="pip install torch==1.13.1+cu116 --extra-index-url https://download.pytorch.org/whl/cu116"
#export TORCH_COMMAND="pip install torch --pre --extra-index-url https://download.pytorch.org/whl/nightly/cu117"
#
export TORCH_COMMAND="pip install torch==1.13.1+cu117 torchvision --extra-index-url https://download.pytorch.org/whl/cu117"
#export TORCH_COMMAND="pip install torch==1.13.1+cu117"
#export TORCH_COMMAND="pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu117/torch-1.13.1%2Bcu117-cp310-cp310-linux_x86_64.whl"
#export TORCH_COMMAND="pip install torch==1.13.1+cu117 --extra-index-url https://download.pytorch.org/whl/cu117/torch-1.13.1%2Bcu117-cp310-cp310-linux_x86_64.whl"
#export TORCH_COMMAND="pip install torch==1.13.1+cu117"

# Requirements file to use for stable-diffusion-webui
#export REQS_FILE="requirements_versions.txt"

# Fixed git repos
#export K_DIFFUSION_PACKAGE=""
#export GFPGAN_PACKAGE=""
export GFPGAN_PACKAGE="git+https://github.com/TencentARC/GFPGAN.git"

# Fixed git commits
#export STABLE_DIFFUSION_COMMIT_HASH=""
#export TAMING_TRANSFORMERS_COMMIT_HASH=""
#export CODEFORMER_COMMIT_HASH=""
#export BLIP_COMMIT_HASH=""

# Uncomment to enable accelerated launch
#export ACCELERATE="True"

#Para especificar la versión de xformers:
#export XFORMERS_PACKAGE="xformers==0.0.17"


export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/x86_64_linux-gnu/



export COMMANDLINE_ARGS="--medvram --disable-nan-check --xformers" 
#Para reinstalar torch:  --reinstall-torch
# --no-half-vae --xformers  --reinstall-torch --reinstall-xformers 
###########################################
