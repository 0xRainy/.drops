" Auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Rust.vim
Plug 'rust-lang/rust.vim'

" Collection of common configuration for the Nvim LSP client
Plug 'neovim/nvim-lspconfig'

" Extensions to built-in LSP, for example, providing type inlay hints
Plug 'nvim-lua/lsp_extensions.nvim'

" Autocompletion framework for built-in LSP
Plug 'hrsh7th/nvim-compe'

" Snippet engine to handle LSP snippets
Plug 'hrsh7th/vim-vsnip'

" Telescope, everything is fuzzy
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" Telescope cheatsheets
Plug 'tami5/sql.nvim'
Plug 'nvim-telescope/telescope-cheat.nvim'
" Telescope lsp handlers
Plug 'gbrlsnchs/telescope-lsp-handlers.nvim'

" Themes
Plug 'embark-theme/vim', { 'as': 'embark' }
Plug 'kyazdani42/nvim-web-devicons'

" Appearance
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mkitt/tabline.vim'
Plug 'nathanaelkane/vim-indent-guides'

" Languages
Plug 'cespare/vim-toml'

" Functionality
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'kyazdani42/nvim-tree.lua'
Plug 'tpope/vim-fugitive'
Plug 'simeji/winresizer'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
