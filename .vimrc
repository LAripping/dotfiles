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

"set nowrap                                                  "disable word wrapping
map <C-l> zH                                                "scroll half screen left
map <C-r> zL                                                "scroll half screen right

cmap w!! w !sudo tee > /dev/null %                          "forgot sudo vim?

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

set statusline=
"set statusline+=%7*\[%n]                                   "buffernr
set statusline+=%1*\ %<%F\                                  "File+path
set statusline+=%2*\ %y\                                    "FileType
"set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}       "Encoding
"set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\             "Encoding2
"set statusline+=%4*\ %{&ff}\                               "FileFormat (dos/unix..)
set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\    "Spellanguage & Highlight on?
set statusline+=%8*\ %=\ row:%l/%L\                         "Rownumber/total (%)
set statusline+=%9*\ col:%03c\                              "Colnr
set statusline+=%0*\ \ %m%r%w\ %P\ \                        "Modified? Readonly? Top/bot.

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

