" RR: User settings
syntax on                                          " Syntax highlight
set noerrorbells                                   " No bells
set tabstop=2 softtabstop=2                        " Default tab use space
set shiftwidth=2                                   " Default shift
set expandtab                                      " Default tab expansion
set smartindent
set nu rnu
set nowrap                                         " Dont wrap lines
set smartcase                                      " Case insensitive
set noswapfile
set nobackup
set undodir=~/.vim/undodir                         " Create this !!!
set undofile
set incsearch                                      " Incremental search
set encoding=utf-8
set spelllang=en_gb
set spell
set splitright                                     " vsplit right
set splitbelow                                     " split below

set colorcolumn=80                                 " Add a column bar
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Plugins
" Ref: https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'                      " status bar
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'                      " git changes
Plug 'ap/vim-css-color'
Plug 'morhetz/gruvbox'                             " color scheme
Plug 'jremmen/vim-ripgrep'    
Plug 'tpope/vim-fugitive'                          " git
Plug 'tpope/vim-markdown'                          " markdown
Plug 'junegunn/goyo.vim'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'preservim/nerdtree'
" Plug 'Valloric/YouCompleteMe'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'mbbill/undotree'

call plug#end()

colorscheme gruvbox
" colorscheme industry
set background=dark

" https://stackoverflow.com/questions/6053301/easier-way-to-navigate-between-vim-split-panes
" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Set initial setup
let g:netrw_browse_split=2
let g:netrw_banner=0
let g:netrw_winsize=20
let g:ctrlp_use_caching=0

" COC Keyboard mapping
nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gr <Plug>(coc-references)
inoremap <silent><expr> <c-@> coc#refresh()
nmap <leader>rn <Plug>(coc-rename)

" Open Nerdtree on the RIGHT
let g:NERDTreeWinPos="right"
" Run Nerdtree on start
autocmd vimenter * NERDTree
" Move focus back to editor
autocmd vimenter * wincmd p
