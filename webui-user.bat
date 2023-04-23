@echo off

set PYTHON=py
set GIT=
set VENV_DIR=


set XFORMERS_PACKAGE=xformers==0.0.18
set TORCH_COMMAND=pip install torch==2.0.0+cu118 torchvision --extra-index-url https://download.pytorch.org/whl/cu118


set COMMANDLINE_ARGS=--xformers


call webui.bat
