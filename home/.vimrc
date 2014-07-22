set nu
set ts=2
colorscheme desert
"set shiftwidth=2
set smartindent

nnoremap <silent> <F8> :TlistToggle<CR>

" highlight trailing whitespace in c++
au BufNewFile,BufRead *.cpp,*.c,*.h call Cpp_stuff()
function Cpp_stuff()
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
endfunction

" highlight the 80'th column
highlight ColorColumn ctermbg=darkgrey
set colorcolumn=80

" tab size is 2
set sw=2
" expanding tabs
set expandtab
" enables C indentation
set cino=:0,l1,g0,t0,(0,u0
" enables more smooth handling of gcc errors
compiler gcc
" highlight trailing spaces
let c_space_errors=1

"vundle config"
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'

Bundle 'scrooloose/nerdtree'
"Bundle 'taglist.vim'
Bundle 'nerdtree-ack'
"Bundle 'ervandew/supertab'
"Bundle 'Valloric/YouCompleteMe'
Bundle 'chazy/cscope_maps'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" NERDTree config
map <F7> :NERDTreeToggle<CR>

map <F9> :!make local_all -j<CR>

set cscopequickfix=s-,c-,d-,i-,t-,e-
"let Cscope_JumpError = 0
"let Cscope_PopupMenu = 1
autocmd FileType qf wincmd H
