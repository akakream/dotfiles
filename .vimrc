syntax on

"Tab and indenting stuff
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

"Unless you write capital searches everything
set smartcase
set ignorecase

"Highligh as I am searching
set incsearch

"Source customized vimrc file in the project root
set exrc

"Set relative numbers from cursor for easy jumping
set relativenumber
set nu

"Dont really know what these are doin
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

"Make the fucking search highlight disappear
set nohlsearch

"Dont close just hide
set hidden

"Dont ring bells in my ear
set noerrorbells

"Dont push the excess words to the next line automatically
set nowrap

"Dont scroll my cursor all the way to the end
set scrolloff=8

"Extra column for possible error or other mesages
set signcolumn=yes

"Column to not exceed 80 characters
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'ycm-core/YouCompleteMe'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'akakream/VimpyKid'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'vim-airline/vim-airline'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'

Plug 'tomlion/vim-solidity'
Plug 'neovimhaskell/haskell-vim'

call plug#end()

let &t_SI = "\<esc>[5 q"
let &t_SR = "\<esc>[5 q"
let &t_EI = "\<esc>[2 q"

"Need it for the ycmd java-completer 
"let g:syntastic_java_checkers = []

colorscheme gruvbox
set background=dark

let mapleader = " "

"switch between regions
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

"For the UndoTree
nnoremap <leader>u :UndotreeShow<CR>

"Open file tree
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

"for vim-fugitive
nmap <leader>gs :G<CR>
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>

"for ycmd
nnoremap <leader>jd :YcmCompleter GoTo<CR>

"for ripgrep
if executable('rg')
    let g:rg_derive_root='true'
endif

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
            \ quit | endif

" fzf
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'
nnoremap <leader>gc :GCheckout<CR>

" For Haskell
filetype plugin indent on
