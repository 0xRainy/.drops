"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/
" set runtimepath+=
if has('win32') | source $LOCALAPPDATA/nvim/helper.vim | else | source $HOME/.config/nvim/helper.vim | endif

" Always src these
execute config_cmd."/vim-plug/plugins.vim"
execute config_cmd."/general/functions.vim"
execute config_cmd."/general/settings.vim"
execute config_cmd."/general/mappings.vim"

" .vim Things
execute config_cmd."/plug-configs/airline.vim"
execute config_cmd."/plug-configs/nvim-lsp.vim"
execute config_cmd."/plug-configs/compe.vim"
execute config_cmd."/plug-configs/nvim-tree.vim"
execute config_cmd."/plug-configs/telescope.vim"

" .lua Things
execute config_cmd_lua."/lua_stuff/lsp.lua"
execute config_cmd_lua."/lua_stuff/telescope.lua"

" Theme
colorscheme embark
