#!/bin/bash

if [ -d ~/.config/nvim ]
then
  mv ~/.config/nvim ~/.config/nvim_`date +%d_%m_%Y`
fi

cp -r nvim ~/.config/nvim

cp tmux.conf ~/.tmux.conf

