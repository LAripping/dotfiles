"VUNDLE requirements start here


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-scripts/AnsiEsc.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"VUNDLE requirements end here





let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_c_checkers = ['gcc', 'make', 'cppcheck']
let g:syntastic_cpp_include_dirs = ['/usr/include','/usr/local/include']
let g:syntastic_cpp_check_header = 1
let g:syntastic_sh_checkers = ['bashate', 'sh', 'shellcheck']
let g:syntastic_java_checkers = ['javac']
let g:syntastic_html_checkers = ['w3', 'validator', 'eslint']
"let g:syntastic_viml_checkers = ['vimlint']
let g:syntastic_asm_checkers = ['gcc']


let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0



set t_Co=256
colorscheme termschool

set number                                                  "line numbering enabled by default

set backspace=indent,eol,start                              "arrows and backspaces wrap around lines
set whichwrap+=<,>,[,]

set tabstop=4                                               "four spaces tabulator
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab

set mouse=nic                                               "mouse in Normal,Insert,Command mode.
                                                            "(press SHIFT to keep old functionality)

set ttyfast                                                 "faster scrolling/buffering

set textwidth=72
set nowrap                                                  "disable word wrapping
map <C-l> zH                                                "scroll half screen left
map <C-r> zL                                                "scroll half screen right

"cnoremap Sudow w sudo tee % >/dev/null                     "forgot sudo vim? U can still save it!
cmap w!! w !sudo tee > /dev/null %

syntax on                                                   "always highlight the syntax

set autoindent                                              "indentation stuff
set smartindent
filetype indent on

filetype plugin indent on                                   "pyflakes requires this
filetype on
filetype plugin on

set noruler                                                 "disable ruler to add statusline
set laststatus=2

set hls                                                     "highlight all search matches

set splitbelow                                              "default split positions
set splitright

set statusline=
set statusline+=%1*\ %<%F\                                  "File+path
set statusline+=%1*\ %m%r%w\                                "Modified? Readonly?
set statusline+=%2*\ %y\                                    "FileType
set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\    "Spellanguage & Highilight on?
set statusline+=%8*\ %#warningmsg#\
set statusline+=%8*\ %{SyntasticStatuslineFlag()}\
set statusline+=%8*\ %=\                                   "temp Placeholder
set statusline+=%9*\ row:%l/%L\ %P\                    "Rownumber/total (%)
set statusline+=%0*\ col:%03c\                              "Colnr

function! HighlightSearch()                                 "function used above
    if &hls
        return 'H'
            else
        return ''
    endif
endfunction


hi User1 ctermfg=white      ctermbg=DarkRed     cterm=bold  "custom colors
hi User2 ctermfg=black      ctermbg=yellow
hi User3 guifg=white        guibg=black
hi User4 guifg=white        guibg=black
hi User5 ctermfg=black      ctermbg=green
hi User7 guifg=white        guifg=black
hi User8 ctermfg=white      ctermbg=blue
hi User9 ctermfg=white      ctermbg=DarkMagenta
hi User0 ctermfg=yellow     ctermbg=DarkGray

hi Comment ctermfg=yellow

