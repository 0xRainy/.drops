" Auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

" Searching
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }
" Better /
Plug 'wincent/loupe'
" File explorer
Plug 'justinmk/vim-dirvish'
Plug 'kristijanhusak/vim-dirvish-git'
" Better Comments
Plug 'tomtom/tcomment_vim'
" Have the file system follow you around
Plug 'airblade/vim-rooter'
" Auto set indent settings
Plug 'tpope/vim-sleuth'
" Text Navigation
Plug 'justinmk/vim-sneak'
" Add some color
Plug 'norcalli/nvim-colorizer.lua'
Plug 'junegunn/rainbow_parentheses.vim'
" Cool Icons
Plug 'ryanoasis/vim-devicons'
" Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'
" Vim builtin LSP
Plug 'neovim/nvim-lsp'
" Status Line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
" Start Screen
Plug 'mhinz/vim-startify'
" Vista
Plug 'liuchengxu/vista.vim'
" Multi-Cursor
Plug 'terryma/vim-multiple-cursors'
" Themes
Plug 'arzg/vim-substrata'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
