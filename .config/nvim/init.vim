"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/
" set runtimepath+=$HOME/.drops/.config/nvim

" Always source these
source $HOME/.drops/.config/nvim/vim-plug/plugins.vim
source $HOME/.drops/.config/nvim/general/settings.vim
source $HOME/.drops/.config/nvim/general/functions.vim
source $HOME/.drops/.config/nvim/general/mappings.vim

" .vim Things
source $HOME/.drops/.config/nvim/plug-configs/airline.vim
source $HOME/.drops/.config/nvim/plug-configs/nvim-lsp.vim
source $HOME/.drops/.config/nvim/plug-configs/compe.vim
source $HOME/.drops/.config/nvim/plug-configs/nvim-tree.vim
source $HOME/.drops/.config/nvim/plug-configs/telescope.vim

" .lua Things
luafile $HOME/.drops/.config/nvim/lua_stuff/lsp.lua
luafile $HOME/.drops/.config/nvim/lua_stuff/telescope.lua

" Theme
colorscheme embark
