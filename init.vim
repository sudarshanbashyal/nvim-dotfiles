set number
set nowrap
set formatoptions-=t
se cursorline

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
Plug 'embark-theme/vim', { 'as': 'embark', 'branch': 'main' }
Plug 'mangeshrex/uwu.vim'
Plug 'joshdick/onedark.vim'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

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


" nerd tree highlighting 
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1

let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
let g:NERDTreeHighlightCursorline = 0

let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['css'] = s:blue " sets the color of css files to blue

let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files

let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb

let g:WebDevIconsDefaultFolderSymbolColor = s:beige " sets the color for folders that did not match any rule
let g:WebDevIconsDefaultFileSymbolColor = s:blue " sets the color for files that did not match any rule

" disabling highlighting for some icons
let g:NERDTreeSyntaxDisableDefaultExtensions = 1
let g:NERDTreeSyntaxDisableDefaultExactMatches = 1
let g:NERDTreeSyntaxDisableDefaultPatternMatches = 1
let g:NERDTreeSyntaxEnabledExtensions = ['js', 'css', 'html', 'ts', 'tsx', 'jsx', 'py', 'json'] " enabled extensions with default colors
let g:NERDTreeSyntaxEnabledExactMatches = ['node_modules', 'favicon.ico'] " enabled exact matches with default colors


