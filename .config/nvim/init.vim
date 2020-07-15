"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/
set runtimepath+=~/.config/nvim

" Always source these
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/functions.vim
source $HOME/.config/nvim/general/mappings.vim

" .vim Things
source $HOME/.config/nvim/plug-configs/start-screen.vim
source $HOME/.config/nvim/plug-configs/clap.vim
source $HOME/.config/nvim/plug-configs/airline.vim
source $HOME/.config/nvim/plug-configs/cyclist.vim
" source $HOME/.config/nvim/plug-configs/nvim-lsp.vim

" .lua Things
luafile $HOME/.config/nvim/lua/plug-colorizer.lua
