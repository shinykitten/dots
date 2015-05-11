" Remove trailing whitespace
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" Sanity
set nocompatible
set nobackup
set showcmd
set t_Co=255
set vb t_vb=  " Disable beeping

" Syntax highlighting
filetype on
filetype plugin on
syntax enable
syntax on
set showmatch

" Indenting
set autoindent  " Extends the current indent
set smartindent  " Predict the correct indent based on syntax
set expandtab
set shiftwidth=2
set softtabstop=2

" Searching
set incsearch
set hlsearch

" Colors
set background=dark
colorscheme base16-railscasts
highlight clear SignColumn
highlight VertSplit    ctermbg=236
highlight ColorColumn  ctermbg=237
highlight LineNr       ctermbg=236 ctermfg=240
highlight CursorLineNr ctermbg=236 ctermfg=240
highlight CursorLine   ctermbg=236
highlight StatusLineNC ctermbg=238 ctermfg=0
highlight StatusLine   ctermbg=240 ctermfg=12
highlight IncSearch    ctermbg=0   ctermfg=3
highlight Search       ctermbg=0   ctermfg=9
highlight Visual       ctermbg=3   ctermfg=0
highlight Pmenu        ctermbg=240 ctermfg=12
highlight PmenuSel     ctermbg=0   ctermfg=3
highlight SpellBad     ctermbg=0   ctermfg=1

" Set tabs to 4 for java
autocmd BufRead,BufNewFile *.java call SetJavaOptions()
function SetJavaOptions()
  set shiftwidth=4
  set softtabstop=4
endfunction
