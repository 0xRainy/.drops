set nocompatible               " dump the old fashioned vi support!
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set backup                     " keep a backup file
set backupdir=~/.backup        " custom backup directory
set history=100                " keep 100 lines of command line history
set ruler                      " show the cursor position all the time
set spell					   " enable spell check
set showcmd                    " display incomplete commands
set mouse=a                    " enable the mouse
set lazyredraw                 " don't update the display while executing macros
set showmode                   " so you know what mode you are in
set laststatus=2               " always put a status line in.
set scrolloff=10               " start scrolling 10 lines from the top/bottom
set ch=1                       " set command line 2 lines high
set nowrap                     " no line wrapping
set shiftwidth=2               " round indent actions to multiple of 2
set softtabstop=4              " soft tabs = 2 spaces
set tabstop=4                  " tabs = 2 spaces
set incsearch                  " do incremental searching
set hlsearch                   " highlight search terms
set ignorecase                 " case insensitive search
set gdefault                   " replace all instances on line when doing global search/replace
set number                     " enable line numbers
set relativenumber             " enable relative line numbers
set showmatch                  " show matching parenthesis
set hidden                     " allow hidden buffers with unsaved changes
set whichwrap+=<,>,[,]         " allow arrow keys to line wrap
set wildmenu                   " enable enhanced command line completion
set wildignore+=*.pui,*.prj    " ignore these when completing file or directory names
set ttyfast                    " faster terminal updates
set virtualedit+=block         " allow virtual-block select to go past end of lines
syntax on                      " enable syntax highlighting
filetype plugin indent on      " enable file type detection

" Plugins
call plug#begin('~/.vim/plugged')


Plug 'w0rp/ale'		" syntax check, LSP support
Plug 'valloric/youcompleteme'	" code-completion
" Plug 'vim-airline/vim-airline'	" status/tabline
Plug '/usr/lib/python3.7/site-packages/powerline/bindings/vim'		" statusbar
Plug 'dylanaraps/wal.vim'	" wal theme
Plug 'tpope/vim-fugitive'	" git
Plug 'tpope/vim-surround'	" quoting/parenthesizing


call plug#end()
colorscheme wal
