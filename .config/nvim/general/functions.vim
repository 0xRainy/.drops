" Integrated terminal
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  if has('win64') || has('win32')
    split term://powershell
  else
    split term://zsh
  endif
  resize 10
endfunction
