
let g:startify_custom_header = [
        \ '     ____                                      ',
        \ '    /\  _`\             __                     ',
        \ '    \ \ \L\ \     __   /\_\    ___   __  __    ',
        \ '     \ \ ,  /   / __`\ \/\ \ /  _ `\/\ \/\ \   ',
        \ '      \ \ \\ \ /\ \L\.\_\ \ \/\ \/\ \ \ \_\ \  ',
        \ '       \ \_\ \_\ \__/.\_\\ \_\ \_\ \_\/`____ \ ',
        \ '        \/_/\/ /\/__/\/_/ \/_/\/_/\/_/`/___/> \',
        \ '                __  __                   /\___/',
        \ '               /\ \/\ \  __              \/__/ ',
        \ '               \ \ \ \ \/\_\    ___ ___        ',
        \ '                \ \ \ \ \/\ \ /  __` __`\      ',
        \ '                 \ \ \_/ \ \ \/\ \/\ \/\ \     ',
        \ '                  \ `\___/\ \_\ \_\ \_\ \_\    ',
        \ '                   `\/__/  \/_/\/_/\/_/\/_/    ',
        \]

let g:startify_session_dir = '~/.config/nvim/session'




let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1

let g:webdevicons_enable_startify = 1

function! StartifyEntryFormat()
        return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
    endfunction

" returns all modified files of the current git repo
" `2>/dev/null` makes the command fail quietly, so that when we are not
" in a git repo, the list will be empty
function! s:gitModified()
    let files = systemlist('git ls-files -m 2>NUL:')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" same as above, but show untracked files, honouring .gitignore
function! s:gitUntracked()
    let files = systemlist('git ls-files -o --exclude-standard 2>NUL:')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

let g:startify_bookmarks = [
            \ { 'i': '~\AppData\local\nvim\init.vim' },
            \ { 'v': '~\.config\nvim\general\settings.vim' },
            \ 'C:\repositories',
            \ ]

let g:startify_enable_special = 0


let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']                        },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']                     },
          \ { 'type': function('s:gitModified'), 'header': ['  Git Modified']    },
          \ { 'type': function('s:gitUntracked'), 'header': ['  Git Untracked']  },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
          \ ]
