"allow some crazy configuration by no supporting backward compatibility.
set nocompatible

" All plugins are defined in this file.
source ~/.config/nvim/plugins.vim

" Common vim editting settings
source ~/.config/nvim/common.vim

let vimsettings = '~/.config/nvim/settings'

for fpath in split(globpath(vimsettings, '\*.vim'), '\n')
  exe 'source' fpath
endfor

