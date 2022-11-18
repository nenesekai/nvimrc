let mapleader = " "

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

map H 6h
map J 6j
map K 6k
map L 6l

" Useful mappings for managing tabs
map th :-tabnext<cr>
map tl :tabnext<cr>
map tn :tabnew<cr> 

" Usefull mappings for navigating splits
map <leader>l <C-W>l
map <leader>h <C-W>h
map <leader>j <C-W>j
map <leader>k <C-W>k

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Other mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Fast saving and quitting
nmap W :w!<cr>
nmap Q :q<cr>

" Use ; for Quick Commands
nmap ; :

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" Delete trailing white space on save, useful for some filetypes ;)
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

if has("autocmd")
    autocmd BufWritePre *.txt,*.js,*.py,*.wiki,*.sh,*.coffee :call CleanExtraSpaces()
endif

