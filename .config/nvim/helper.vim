if has('win32')
    let configdir = join(split($MYVIMRC, '\')[:-2], '\')
    let src = "source "
    let luafile = "luafile "
else
    let configdir = join(split($HOME, '/')[:-2], '/')
    let src = "source /"
    let luafile = "luafile /"
endif
let g:config_cmd = join([src, configdir],'')
let g:config_cmd_lua = join([luafile, configdir],'')
