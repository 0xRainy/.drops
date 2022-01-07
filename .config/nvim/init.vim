"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/
set runtimepath+=~\.config\nvim
if has('win32') | source $LOCALAPPDATA\nvim\helper.vim | else | source $HOME/.config/nvim/helper.vim | endif

" Always src these
execute config_cmd."/vim-plug/plugins.vim"
"execute config_cmd."/general/functions.vim"
execute config_cmd."/general/settings.vim"
execute config_cmd."/general/mappings.vim"

" Theme
colorscheme turtles
highlight LineNr guibg=#111111
highlight SignColumn guibg=#111111
highlight VertSplit guibg=NONE
highlight StatusLine guifg=#111111
highlight StatusLine guibg=#575b67
highlight StatusLineNC guibg=#373b47
highlight StatusLineNC guifg=#111111
highlight NormalFloat guibg=#151515
highlight Pmenu guibg=#151515
highlight TabLineFill guifg=#111111

" .lua Things
execute config_cmd_lua."/lua_stuff/lsp.lua"
execute config_cmd_lua."/lua_stuff/telescope.lua"
execute config_cmd."/plug-configs/indent-blankline.lua"

" Plugin settings
" execute config_cmd."/plug-configs/airline.vim"
execute config_cmd."/plug-configs/nvim-lsp.vim"
" execute config_cmd."/plug-configs/compe.vim"
execute config_cmd."/plug-configs/nvim-tree.vim"
execute config_cmd."/plug-configs/undotree.vim"
execute config_cmd."/plug-configs/telescope.vim"
execute config_cmd."/plug-configs/floaterm.vim"

