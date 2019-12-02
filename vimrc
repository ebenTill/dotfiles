if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('morhetz/gruvbox')
  call dein#add('godlygeek/tabular')
  call dein#add('kien/ctrlp.vim')
  call dein#add('scrooloose/nerdtree')
  call dein#add('ervandew/supertab')

  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif

syntax on
set number
filetype plugin indent on
set nocompatible
set backspace=indent,eol,start
set tabstop=4
set shiftwidth=2
set expandtab
set tw=80
set softtabstop=0
set smartcase
set incsearch
set showmode
set nowrap
set smartindent

set t_Co=256

let mapleader = ','

set completeopt=menuone,menu,longest
set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox
set wildmode=longest,list,full
set wildmenu
set completeopt+=longest

set cmdheight=1

set background=dark
colorscheme gruvbox

ino jj <esc>
cno jj <c-c>

map <silent> <Leader>t :CtrlP()<CR>
noremap <leader>b<space> :CtrlPBuffer<cr>
let g:ctrlp_custom_ignore = '\v[\/]dist$'

let g:SuperTabDefaultCompletionType = '<c-x><c-o>'

if has("gui_running")
    imap <c-space> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
  else " no gui
      if has("unix")
            inoremap <Nul> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
   endif
endif


map <Leader>n :NERDTreeToggle<CR>

let g:haskell_tabular = 1
vmap a= :Tabularize /=<CR>
vmap a; :Tabularize /::<CR>
vmap a- :Tabularize /-><CR>
let g:haskellmode_completion_ghc = 1

