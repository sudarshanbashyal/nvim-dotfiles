let g:signify_sign_add               = ''
let g:signify_sign_delete            = ''
let g:signify_sign_delete_first_line = ''
let g:signify_sign_change            = ''

" dont display numbers
let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 0
let g:signify_number_highlight=1

" Jump though hunks
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)
nmap <leader>gJ 9999<leader>gJ
nmap <leader>gK 9999<leader>gk

