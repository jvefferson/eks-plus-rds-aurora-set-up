#!/bin/bash

git clone --depth=1 https://github.com/tfutils/tfenv.git ~/.tfenv
echo 'export PATH="$HOME/.tfenv/bin:$PATH"' >> ~/.bash_profile
sudo ln -s ~/.tfenv/bin/* /usr/local/bin
source ~/.bash_profile

# RUN
# tfenv install 1.4.2 
# tfenv use 1.4.2 
# terraform version

# bash localscript.sh
