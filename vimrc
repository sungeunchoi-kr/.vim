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
" Search and highlight does not jump to next word
nnoremap * *``
set nocompatible
set number
set nowrap
set showmode
set colorcolumn=80
set smartcase
set smarttab
set smartindent
set autoindent
" move the highlight as you add characters to the search string.
set incsearch
set history=1000
set clipboard=unnamedplus,autoselect

set completeopt=menuone,menu,longest

set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox
set wildmode=longest,list,full
set wildmenu
set completeopt+=longest

" Ctags navigation addendum
" https://stackoverflow.com/questions/563616/vim-and-ctags-tips-and-tricks
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" 256 colors
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

" fzf fuzzy file search
" https://github.com/junegunn/fzf
set rtp+=~/.fzf

" Pathgoen
execute pathogen#infect()

""""" Nerdtree
map <C-n> :NERDTreeToggle<CR>

""""" CtrlP
map <silent> <Leader>t :CtrlP()<CR>
noremap <leader>b<space> :CtrlPBuffer<cr>
" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }
"let g:ctrlp_custom_ignore = '\v[\/]dist$'

""""" Deoplete (autocompleter)
let g:deoplete#enable_at_startup = 1

""""" Supertab (choose completion with tab instead of arrow keys)
let g:SuperTabDefaultCompletionType = '<c-x><c-o>'

" http://www.stephendiehl.com/posts/vim_2016.html
""""" Syntastic
" map <Leader>s :SyntasticToggleMode<CR>

let g:syntastic_javascript_checkers = ['eslint']

" show any linting errors immediately
let g:syntastic_check_on_open = 1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

