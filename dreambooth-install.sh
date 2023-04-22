#!/bin/bash


#https://github.com/ShivamShrirao/diffusers/tree/main/examples/dreambooth

python3.10 -m venv venv

cd venv
source bin/activate

pip install git+https://github.com/ShivamShrirao/diffusers.git

wget https://raw.githubusercontent.com/ShivamShrirao/diffusers/main/examples/dreambooth/requirements.txt

pip install -U -r requirements.txt

pip install bitsandbytes

#pip install deepspeed

git clone https://github.com/ShivamShrirao/diffusers

accelerate config


cd diffusers/examples/dreambooth/

./test.sh





#Para salir:
#deactivate










