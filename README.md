
# GANcMRI - Synthetic cMRI video generation
This repository contains the code for the demo of the paper GANcMRI: Cardiac magnetic resonance video generation and physiologic guidance using latent space prompting by Milos Vukadinovic, Alan Kwan, Debiao Li and David Ouyang.

## Requirements 
To run the demo you need to have a gpu, NVIDIA drivers, docker and NVIDIA container toolkit. If you don't see here how to install them.
To install NVIDIA container toolkit on linux, run

`apt -y install nvidia-container-toolkit`

## Demo
Step 1:
Download weights (best_net.pkl) from https://drive.google.com/file/d/1_BqIPf5RfRCkukwFECftq7-Kz0dR0ok9/view?usp=drive_link and place it in this repo 

Step 2:

`docker build -t custom-tf-jupyter-image .`

Step 3:

`docker run --gpus device=0 -it --name gancmri -p 8888:8888 -v $(pwd):/data --rm custom-tf-jupyter-image`

Step 4:

Click on Jupyter notebook link that was displayed by docker, and inside jupyter select a notebook Demo.ipynb.

Step 5: 

Run All cells, the demo will be displayed in the last one

## Inquiries
For inquiries about the repository, please create a GitHub issue.
