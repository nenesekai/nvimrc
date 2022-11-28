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

inoremap <silent><expr> <tab> coc#pum#visible() ? coc#pum#confirm() : "\<tab>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ultisnip Configurations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:UltiSnipsEditSplit="vertical"

let g:UltiSnipsSnippetDirectories="C:/Users/Asiimoviet/AppData/Local/nvim/snippets/"

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<s-tab>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vimtex Configurations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Autopairs Configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

lua << EOF
require("nvim-autopairs").setup {}
EOF

