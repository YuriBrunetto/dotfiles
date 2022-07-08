call plug#begin()
Plug 'HerringtonDarkholme/yats.vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'honza/vim-snippets'
Plug 'MaxMEllon/vim-jsx-pretty'
" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Search text in files
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Git blame
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
" Theme
Plug 'morhetz/gruvbox'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" File Explorer
Plug 'scrooloose/nerdtree'
" Styled Components
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
" Colored icons for nerdtree
Plug 'ryanoasis/vim-devicons'
" Prettier
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
Plug 'sbdchd/neoformat'
Plug 'mattn/emmet-vim'
call plug#end()

silent! nmap <F2> :NERDTreeToggle<CR>
silent! nmap <F3> :NERDTreeFocus<CR>


syntax on

let g:gruvbox_italic=1
colorscheme gruvbox 

" Prettier on save
autocmd BufWritePre *.tsx,*.jsx,*.js,*.ts Neoformat

set autoindent
set autoread
set backspace=indent,eol,start
set history=100
set hlsearch
set linespace=0
set number
set relativenumber
set ruler
set shiftround
set showcmd
set showmatch
set smarttab
set smartindent
set splitbelow
set splitright
set tabstop=2
set shiftwidth=2
set expandtab
set undodir=~/vim/undo
set undofile
set undolevels=1000
set undoreload=10000
set listchars=tab:▸\ ,trail:·,nbsp:_,extends:❯,precedes:❮
set scroll=5
set encoding=utf8
set guifont=DroidSansMono_Nerd_Font:h11

" CoC
let g:ctrlp_custom_ignore = 'dist\|node_modules\|DS_Store\|git'
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-actions',
  \ 'coc-lists',
  \ 'coc-tsserver',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-prettier',
  \ 'coc-vimlsp',
  \ ]

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()

nmap <leader>rn <Plug>(coc-rename)

nmap <silent> gf <Plug>(coc-definition)


