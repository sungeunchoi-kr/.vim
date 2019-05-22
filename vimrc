syntax on
filetype plugin indent on

" Basic Settings
set nu
imap kj 
set tabstop=4
set shiftwidth=4
set expandtab
set background=dark
set hlsearch
set nocompatible
set number
set nowrap
set showmode
set tw=80
set smartcase
set smarttab
set smartindent
set autoindent
" set softtabstop=2
set incsearch
"set mouse=a
set history=1000
set clipboard=unnamedplus,autoselect

set completeopt=menuone,menu,longest

set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox
set wildmode=longest,list,full
set wildmenu
set completeopt+=longest

set t_Co=256

set cmdheight=1

scriptencoding utf-8
set encoding=utf-8

" disables bell for backspaces, etc.
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

"from "http://stackoverflow.com/questions/290465/vim-how-to-paste-over-without-overwriting-register/290723#290723
function! RestoreRegister()
  let @" = s:restore_reg
  return ''
endfunction
function! s:Repl()
    let s:restore_reg = @"
    return "p@=RestoreRegister()\<cr>"
endfunction
" NB: this supports "rp that replaces the selection by the contents of @r
vnoremap <silent> <expr> p <sid>Repl()

" Pathgoen
execute pathogen#infect()

" http://www.stephendiehl.com/posts/vim_2016.html
""""" Syntastic
map <Leader>s :SyntasticToggleMode<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

""""" Nerdtree
map <Leader>n :NERDTreeToggle<CR>

""""" CtrlP
map <silent> <Leader>t :CtrlP()<CR>
noremap <leader>b<space> :CtrlPBuffer<cr>
let g:ctrlp_custom_ignore = '\v[\/]dist$'

