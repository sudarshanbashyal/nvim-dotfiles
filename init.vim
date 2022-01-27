set number

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
Plug 'akinsho/toggleterm.nvim'


call plug#end()

set background=dark
colorscheme gruvbox

map <silent> <C-n> :NERDTreeFocus <CR> " nerdtree toggle

" Norma keybindings
nnoremap <C-s> <C-o>:w<CR> " ctrl + s to save in normal mode
inoremap <C-s> :w <CR> " ctrl + s to save in insert mode

inoremap kj <ESC> " k+j to get to normal mode

inoremap <C-Z> <C-o>:u<CR> " undo in insert mode
nnoremap <C-z> u <CR> " undo in normal mode

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Autocomplete quotes/paranthesis and such
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap {<CR> {<CR>}<Esc>O
inoremap [ []<Esc>i
inoremap < <><Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i

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

" Ctrl backspace
noremap! <C-BS> <C-w>
noremap! <C-h> <C-w>


" sourcing COC LSP
source $HOME/.config/nvim/plug-config/coc.vim




