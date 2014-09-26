set nu
set ts=2
colorscheme desert
"set shiftwidth=2
set smartindent
set hlsearch

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

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/Vundle.vim'

" My Plugins here:
"
" original repos on github
"Plugin 'tpope/vim-fugitive'
"Plugin 'Lokaltog/vim-easymotion'
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"Plugin 'tpope/vim-rails.git'
" vim-scripts repos
"Plugin 'L9'
"Plugin 'FuzzyFinder'
" non github repos
"Plugin 'git://git.wincent.com/command-t.git'

Plugin 'scrooloose/nerdtree'
"Plugin 'taglist.vim'
Plugin 'nerdtree-ack'
"Plugin 'ervandew/supertab'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'chazy/cscope_maps'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" NERDTree config
map <F7> :NERDTreeToggle<CR>
map <F9> :!make local_all -j<CR>
map <F12> :set filetype=kreatvlog<CR>

set cscopequickfix=s-,c-,d-,i-,t-,e-
"let Cscope_JumpError = 0
"let Cscope_PopupMenu = 1
autocmd FileType qf wincmd H


