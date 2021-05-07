"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/
"set runtimepath+=$HOME/dotfiles_redo/.drops/.config/nvim

" Always source these
source $HOME/dotfiles_redo/.drops/.config/nvim/vim-plug/plugins.vim
source $HOME/dotfiles_redo/.drops/.config/nvim/general/settings.vim
source $HOME/dotfiles_redo/.drops/.config/nvim/general/functions.vim
source $HOME/dotfiles_redo/.drops/.config/nvim/general/mappings.vim

" .vim Things
source $HOME/dotfiles_redo/.drops/.config/nvim/plug-configs/airline.vim
source $HOME/dotfiles_redo/.drops/.config/nvim/plug-configs/nvim-lsp.vim
source $HOME/dotfiles_redo/.drops/.config/nvim/plug-configs/compe.vim
source $HOME/dotfiles_redo/.drops/.config/nvim/plug-configs/nvim-tree.vim
source $HOME/dotfiles_redo/.drops/.config/nvim/plug-configs/telescope.vim

" .lua Things
luafile $HOME/dotfiles_redo/.drops/.config/nvim/lua/lsp.lua
luafile $HOME/dotfiles_redo/.drops/.config/nvim/lua/telescope.lua

" Theme
colorscheme embark
