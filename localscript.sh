#!/bin/bash

git clone --depth=1 https://github.com/tfutils/tfenv.git ~/.tfenv
echo 'export PATH="$HOME/.tfenv/bin:$PATH"' >> ~/.bash_profile
sudo ln -s ~/.tfenv/bin/* /usr/local/bin
source ~/.bash_profile

# RUN
# bash localscript.sh
# tfenv install 1.1.1 
# tfenv use 1.1.1 
# terraform version