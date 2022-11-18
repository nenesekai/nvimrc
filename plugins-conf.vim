"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fern
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:fern#disable_drawer_auto_quit   = 1
let g:fern#disable_viewer_hide_cursor = 1

noremap <silent> <leader>n :Fern . -drawer -toggle<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Coc KeyBinds
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map cd :CocDiagnostics<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Autopairs Configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
lua << EOF
require("nvim-autopairs").setup {}
EOF

