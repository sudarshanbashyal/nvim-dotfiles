set number
set nowrap
set formatoptions-=t

call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'nvim-telescope/telescope.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'itchyny/lightline.vim'
Plug 'voldikss/vim-floaterm'
Plug 'tomasiser/vim-code-dark'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript'

call plug#end()

set background=dark
colorscheme codedark
let NERDTreeShowHidden=1

map <silent> <C-n> :NERDTreeFocus <CR> " nerdtree toggle

" Normal keybindings
nnoremap <C-s> <C-o>:w<CR> " ctrl + s to save in normal mode
inoremap <C-s> :w <CR> " ctrl + s to save in insert mode

inoremap kj <ESC> " k+j to get to normal mode

inoremap <C-Z> <C-o>:u<CR> " undo in insert mode
nnoremap <C-z> u <CR> " undo in normal mode

nmap <F2> <Plug>(coc-rename)

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Indentation/Tabs
set smarttab
set cindent
set tabstop=4
set shiftwidth=4
nnoremap <S-Tab> <<
nnoremap <S-Tab> <<
inoremap <S-Tab> <C-d>

" Indenting during selection mode
vmap <Tab> >gv
vmap <S-Tab> <gv

" sourcing COC LSP
source $HOME/.config/nvim/plug-config/coc.vim

" floating terminal
nnoremap   <silent>   <F7>    :FloatermNew<CR>
tnoremap   <silent>   <F7>    <C-\><C-n>:FloatermNew<CR>
nnoremap   <silent>   <F8>    :FloatermPrev<CR>
tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <F9>    :FloatermNext<CR>
tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR>
nnoremap   <silent>   <F12>   :FloatermToggle<CR>
tnoremap   <silent>   <F12>   <C-\><C-n>:FloatermToggle<CR>

" Switching splits
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Ctrl backspace
imap <C-BS> <C-W>




