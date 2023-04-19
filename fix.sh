#!/bin/bash


cd venv/lib/python3.10/site-packages/torch/lib
ln -s libnvrtc-672ee683.so.11.2 libnvrtc.so
