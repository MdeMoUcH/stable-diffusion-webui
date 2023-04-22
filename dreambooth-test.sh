export MODEL_NAME="runwayml/stable-diffusion-v1-5"
export INSTANCE_DIR="/data/stable-diffusion/train-jl/convertidas/"
export CLASS_DIR="/data/stable-diffusion/test/venv/class/"
export OUTPUT_DIR="/data/stable-diffusion/test/venv/"

cd diffusers/examples/dreambooth/

accelerate launch --mixed_precision="fp16" train_dreambooth.py \
  --pretrained_model_name_or_path=$MODEL_NAME \
  --instance_data_dir=$INSTANCE_DIR \
  --class_data_dir=$CLASS_DIR \
  --output_dir=$OUTPUT_DIR \
  --with_prior_preservation --prior_loss_weight=1.0 \
  --instance_prompt="a photo of jlwhite" \
  --class_prompt="a photo of man" \
  --resolution=512 \
  --train_batch_size=1 \
  --sample_batch_size=1 \
  --gradient_accumulation_steps=1 --gradient_checkpointing \
  --learning_rate=5e-6 \
  --lr_scheduler="constant" \
  --lr_warmup_steps=0 \
  --num_class_images=10 \
  --max_train_steps=10 \
  --use_8bit_adam
