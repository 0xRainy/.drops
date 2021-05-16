" Auto-install vim-plug
if has('win32') | let plugdir='$LOCALAPPDATA/nvim/autoload/plug.vim' | else | let plugdir='~/.config/nvim/autoload/plug.vim'| endif
if empty(glob(plugdir))
  silent !curl -fLo plugdir --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
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
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'mkitt/tabline.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'drewtempelmeyer/palenight.vim'
Plug 'wadackel/vim-dogrun'
Plug 'haishanh/night-owl.vim'
Plug '/tyrannicaltoucan/vim-deep-space'
Plug 'wojciechkepka/vim-github-dark'
Plug 'cocopon/iceberg.vim'
Plug 'fenetikm/falcon'
Plug 'AlessandroYorba/Despacio'
Plug 'AlessandroYorba/Sierra'
Plug 'AlessandroYorba/Alduin'
Plug 'AlessandroYorba/Arcadia'
Plug 'sheerun/vim-polyglot'
Plug 'caksoylar/vim-mysticaltutor'
Plug 'pineapplegiant/spaceduck'
Plug 'chriskempson/base16-vim'
Plug 'bluz71/vim-moonfly-colors'
Plug 'ghifarit53/tokyonight-vim'
Plug 'rishikanthc/skyfall-vim'
Plug 'kadekillary/Turtles'
Plug 'norcalli/nvim-colorizer.lua'

" Languages
Plug 'cespare/vim-toml'

" Functionality
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'kyazdani42/nvim-tree.lua'
Plug 'tpope/vim-fugitive'
Plug 'simeji/winresizer'
Plug 'voldikss/vim-floaterm'
Plug 'jiangmiao/auto-pairs'

call plug#end()

