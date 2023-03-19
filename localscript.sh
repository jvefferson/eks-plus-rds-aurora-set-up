#!/bin/bash

git clone --depth=1 https://github.com/tfutils/tfenv.git ~/.tfenv
echo 'export PATH="$HOME/.tfenv/bin:$PATH"' >> ~/.bash_profile
sudo ln -s ~/.tfenv/bin/* /usr/local/bin
source ~/.bash_profile

# RUN
# bash localscript.sh
# tfenv install 0.12.19 
# tfenv use 0.12.19 
# terraform version