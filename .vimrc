execute pathogen#infect()

syntax on
set number
filetype plugin indent on
set nocompatible
set backspace=indent,eol,start
set tabstop=2
set shiftwidth=2
set expandtab
set tw=80
set softtabstop=2
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


map <silent> tw :GhcModTypeInsert<CR>
map <silent> ts :GhcModSplitFunCase<CR>
map <silent> tq :GhcModType<CR>
map <silent> te :GhcModTypeClear<CR>

map <Leader>n :NERDTreeToggle<CR>

let g:haskell_tabular = 1
vmap a= :Tabularize /=<CR>
vmap a; :Tabularize /::<CR>
vmap a- :Tabularize /-><CR>
let g:haskellmode_completion_ghc = 1
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
autocmd BufEnter *.hs set formatprg=pointfree


let g:elm_jump_to_error = 0
let g:elm_make_output_file = "elm.js"
let g:elm_make_show_warnings = 0
let g:elm_syntastic_show_warnings = 0
let g:elm_browser_command = ""
let g:elm_detailed_complete = 0
let g:elm_format_autosave = 1
let g:elm_format_fail_silently = 0
let g:elm_setup_keybindings = 1

call neocomplete#util#set_default_dictionary(
  \ 'g:neocomplete#sources#omni#input_patterns',
  \ 'elm',
  \ '\.')
