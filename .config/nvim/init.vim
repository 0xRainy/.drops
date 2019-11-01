" Settings
set nocompatible               " dump the old fashioned vi support!
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set backup                     " keep
set backupdir=~/.backup        " custom backup directory
set history=100                " keep 100 lines of command line history
set ruler                      " show the cursor position all the time
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
set wildmode=longest,full
set wildignore+=*.pui,*.prj    " ignore these when completing file or directory names
set ttyfast                    " faster terminal updates
set virtualedit+=block         " allow virtual-block select to go past end of lines
set updatetime=300
set shortmess+=F
set signcolumn=yes
set cc=80
set completeopt=menu,menuone,noinsert,noselect
set undofile				   " undo history
set undodir=~/.config/nvim/.undo
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}%{get(g:,'coc_git_status','')}
syntax on                      " enable syntax highlighting
filetype plugin indent on      " enable file type detection
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#languageclient#enabled = 1
let g:airline_skip_empty_sections = 1
"let g:ctrlp_use_caching = 0
"let g:ctrlp_user_command = 'ag %s -l -g ""'
"let g:LanguageClient_useFloatingHover = 1
"let g:LanguageClient_hoverPreview = 'Always'
"let g:LanguageClient_diagnosticsList = 'Location'
"let g:LanguageClient_useVirtualText = 1
"let g:LanguageClient_serverCommands = {
"	  \ 'python': ['dotnet', '/home/rainy/languageServer.0.4.71/Microsoft.Python.LanguageServer.dll'],
"	  \ 'sh': ['bash-language-server']}
"let g:deoplete#enable_at_startup = 1

" Functions 'n Stuff
if executable('ag')
  let g:ackprg = 'ag --vimgrep --nocolor'
  set grepprg=ag\ --nogroup\ --nocolor
endif

"function! s:show_documentation()
"  if (index(['vim','help'], &filetype) >= 0)
"    execute 'h '.expand('<cword>')
"  else
"    call CocAction('doHover')
"  endif
"endfunction


" Plugins
call plug#begin('~/.config/nvim/plugged')


" Plug 'w0rp/ale'		" syntax check, LSP support
" Plug 'valloric/youcompleteme'	" code-completion
Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'} " code completion / lsp support / VSCode Extensions
"Plug 'autozimu/LanguageClient-neovim', {
"    \ 'branch': 'next',
"    \ 'do': 'make',
"    \ }
" (Optional) Multi-entry selection UI.
" Plug 'junegunn/fzf'
Plug 'vim-airline/vim-airline'	" status/tabline
" Plug '/usr/lib/python3.7/site-packages/powerline/bindings/vim'		" statusbar
Plug 'dylanaraps/wal.vim'	" wal theme
Plug 'tpope/vim-fugitive'	" git
Plug 'gregsexton/gitv'		" git visual
" Plug 'tpope/vim-surround'	" quoting/parenthesizing
Plug 'scrooloose/nerdtree'	" file tree explorer
Plug 'Xuyuanp/nerdtree-git-plugin'	" git for nerdtree
" Plug 'sheerun/vim-polyglot'	" better language support
" Plug 'ctrlpvim/ctrlp.vim'	" fuzzy finder
Plug 'dyng/ctrlsf.vim'		" Sublime search
Plug 'airblade/vim-gitgutter'	" git gutter
" Plug 'mileszs/ack.vim'		" ack/ag for vim
Plug 'editorconfig/editorconfig-vim'	" editorconfig support
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'	" NERDTree colors
Plug 'ryanoasis/vim-devicons'	" NERDTree icons
" Plug 'terryma/vim-multiple-cursors'		" edit multiple selections at same time
Plug 'SirVer/ultisnips'
Plug 'Shougo/echodoc.vim'
Plug 'wincent/command-t'
" Plug 'roxma/nvim-yarp'
" Plug 'roxma/vim-hug-neovim-rpc'
"Plug 'Shougo/deoplete.nvim'
"Plug 'Shougo/neoinclude.vim'
"Plug 'Shougo/neco-syntax'
"Plug 'Shougo/vimshell.vim'
"Plug 'fszymanski/deoplete-emoji'


call plug#end()

" Colors
colorscheme wal
highlight CocUnderline ctermfg=7
highlight CocWarningSign ctermfg=Black ctermbg=Brown guifg=Brown
highlight CocErrorSign ctermfg=Black ctermbg=Red guifg=Red
highlight CocInfoSign ctermfg=Black ctermbg=Yellow guifg=Yellow
highlight CocHintSign ctermfg=Black ctermbg=Blue guifg=Blue
highlight ColorColumn ctermbg=1

" Bindings
noremap <C-e> :NERDTreeToggle<CR>
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> K :call <SID>show_documentation()<CR>
nmap <leader>ac  <Plug>(coc-codeaction)
nmap <leader>qf  <Plug>(coc-fix-current)
nmap <C-F>f <Plug>CtrlSFPrompt
nmap ge :CocCommand explorer<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>

" Autocmds

