syntax on

set guicursor=a:blinkwait1-blinkoff500-blinkon500                          " Always block cursor
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set termencoding=utf-8
set pumheight=10                        " Makes popup menu smaller
set fileencodings=utf-8                 " The encoding written to file
set ruler                               " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set autoindent                          " Good auto indent
set laststatus=2                        " Always display the status line
set number                              " Line numbers
set relativenumber                      " Relative line numbers
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set signcolumn=yes                      " Always show the signcolumn, otherwise it would shift the text each time
set updatetime=300                      " Faster completion
set timeoutlen=300                      " By default timeoutlen is 1000 ms
set noerrorbells						" No ding ding ding
set inccommand=split                    " Magic - Shows the effect of a command while typing
set tabstop=4 softtabstop=4				" Tab settings
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set smartcase
set noswapfile
set undodir=$HOME/.config/nvim/undo
set undofile
set incsearch							" Search while typing
set colorcolumn=80						" This thing ------------------------>
set termguicolors
set noemoji
set list                                " show whitespace
set listchars=nbsp:⦸
set listchars+=tab:▷┅
set listchars+=extends:»
set listchars+=trail:•
set textwidth=80                        " automatically wrap at 80 columns
set whichwrap=b,h,l,s,<,>,[,],~         " allow crossing of line boundaries
set guifont=FiraCode\ NF:h15
set wildmenu
set wildmode=longest:full,full
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe

" Theme
colorscheme one

" Neovide Comfig
let g:neovide_refresh_rate=120
let g:neovide_transparency=0.97
