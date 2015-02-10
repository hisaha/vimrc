" vi との互換性OFF
set nocompatible
" ファイル形式の検出を無効にする
filetype off

" Vundle を初期化して
" Vundle 自身も Vundle で管理
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'


Bundle 'vim-scripts/taglist.vim'
Bundle 'tpope/vim-pathogen'
Bundle 'tpope/vim-fugitive'
Bundle 'msanders/snipmate.vim'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-git'
Bundle 'ervandew/supertab'
" Bundle 'sontek/minibufexpl.vim'
Bundle 'wincent/Command-T'
Bundle 'mitechie/pyflakes-pathogen'
Bundle 'mileszs/ack.vim'
Bundle 'sjl/gundo.vim'
Bundle 'fs111/pydoc.vim'
Bundle 'nvie/vim-pep8'
Bundle 'alfredodeza/pytest.vim'
Bundle 'reinh/vim-makegreen'
Bundle 'vim-scripts/The-NERD-tree'
Bundle 'scrooloose/nerdcommenter'
" Bundle 'python-rope/ropevim'
Bundle 'vim-scripts/DoxygenToolkit.vim'
Bundle "Chiel92/vim-autoformat"

filetype off
"call pathogen#incubate()
"call pathogen#helptags()

"folding
set foldmethod=indent
set foldlevel=99

"line number
set number

"sytax highlighting
syntax on
filetype on
filetype plugin indent on

"tab completion
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

"for python
autocmd FileType python setl autoindent
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setl tabstop=8 expandtab shiftwidth=4 softtabstop=4

"for python execution with Ctrl+P
function! s:Exec()
	    exe "!" . &ft . " %"
	    :endfunction
	    command! Exec call <SID>Exec()
	    map <silent> <C-P> :call <SID>Exec()<CR>

"taglist
set tags=tags
let Tlist_Show_One_File = 1
let Tlist_Use_Right_Window = 1
let Tlist_Exit_OnlyWindow = 1
map <silent> <C-L> :TlistToggle<CR>
let tlist_objc_settings='objc;P:protocols;i:interfaces;I:implementations;M:instance methods;C:implementation methods;Z:protocol methods'

"NERDTree
let NERDTreeShowHidden = 1
let file_name = expand("%:p")
if has('vim_starting') &&  file_name == ""
    autocmd VimEnter * execute 'NERDTree ./'
endif
map <silent> <C-T> :NERDTreeToggle<CR>

"NERDCommenter
let NERDSpaceDelims = 1
nmap <silent> <C-K> <Plug>NERDCommenterToggle
vmap <silent> <C-K> <Plug>NERDCommenterToggle

"Doxygen
let g:DoxygenToolkit_commentType = "C++"

"highlight color
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline

