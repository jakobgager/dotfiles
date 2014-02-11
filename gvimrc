colorscheme default
colorscheme wombat
"set guifont=Bitstream\ Vera\ Sans\ Mono\ for\ Powerline:h14
"set guifont=Monospace\ 11
set guifont=Ubuntu\ Mono\ 13

set cursorline
set cursorcolumn

" remove toolbar
set guioptions-=T
"
" remove menuebar
set guioptions-=m

"remove scrollbar right
set guioptions-=r
set guioptions-=l

set number

"Use system clipboard for yank and put
"noremap  y "+y
"noremap  Y "+Y
"noremap  p "+p
"noremap  P "+P
"noremap  D "+D
"vnoremap y "+y
"vnoremap Y "+Y
"vnoremap p "+p
"vnoremap P "+P
"vnoremap D "+D

function! DeleteInactiveBufs()
    "From tabpagebuflist() help, get a list of all buffers in all tabs
    let tablist = []
    for i in range(tabpagenr('$'))
        call extend(tablist, tabpagebuflist(i + 1))
    endfor

    "Below originally inspired by Hara Krishna Dara and Keith Roberts
    "http://tech.groups.yahoo.com/group/vim/message/56425
    let nWipeouts = 0
    for i in range(1, bufnr('$'))
        if bufexists(i) && !getbufvar(i,"&mod") && index(tablist, i) == -1
        "bufno exists AND isn't modified AND isn't in the list of buffers open in windows and tabs
            silent exec 'bwipeout' i
            let nWipeouts = nWipeouts + 1
        endif
    endfor
    echomsg nWipeouts . ' buffer(s) wiped out'
endfunction

command! Bdi :call DeleteInactiveBufs()
