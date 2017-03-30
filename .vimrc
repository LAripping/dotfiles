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
set statusline+=%1*\ %m%r%w\                            "Modified? Readonly?
set statusline+=%2*\ %y\                                    "FileType
set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\    "Spellanguage & Highilight on?
"syntastic part here, blue color (%8)
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

