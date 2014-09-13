execute pathogen#infect()
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
autocmd vimenter * NERDTree
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType "== "primary") | q | endif
"nnoremap <Leader>g <C-n>
set nocompatible
set backspace=2
set autoread
set nu sts=4 sw=4 ts=4 ai fen expandtab hlsearch wmh=0 t_Co=256 laststatus=2
set cinoptions=:0,l1,t0,g0
set nocsverb
set smartcase
set mouse=a
set hidden
set hlsearch
set incsearch
set number
set undolevels=1000
set nobackup
set noswapfile

set nocompatible

let mapleader = ","
nnoremap <leader><space> :noh<cr>


"some syntax hilighting
filetype on
filetype plugin on
filetype plugin indent on
autocmd filetype python set expandtab
syntax enable
set grepprg=grep\ -nH\ $*

"ignore case sensitivity for searches
set ignorecase
set smartcase

set autoindent

"Spaces are better than a tab character
set expandtab
set smarttab

"tabs are 2 spaces
set shiftwidth=2
set softtabstop=2

"turn off beeps
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

"Bracket autocomplete
"inoremap { {<CR>}<Esc>O<TAB>
"inoremap { {}<Esc><h>

set showmatch
set matchpairs+=<:>         " show matching <> (html mainly) as well
"set matchpairs+=$:$
filetype on
filetype indent on
filetype plugin on

syntax on

"colorscheme koehler
"colorscheme calmar256-dark
"colorscheme 256_asu1dark
"colorscheme zellner

colorscheme desert
"colorscheme solarized

"colorscheme summerfruit256
"colorscheme vividchalk

" Highlight end of line whitespace.
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

let maplocalleader = ","
let g:xml_syntax_folding=1

"Auto-complete
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
      return "\<C-N>"
        else
            return "\<Tab>"
              endif
              endfunction

              inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>

set wildmode=longest:full
set wildmenu

"handle long lines correctly
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

"set linebreak


"save when losing focus
au FocusLost * :wa

"<leader>w gets rid of trailing whitespace
nnoremap <leader>w :%s/\s\+$//<cr>:let @/=''<CR>

"maps 'jj' to escape. POTENTIALLY HARMFUL
inoremap jj <ESC>

map <F7> <Esc>:setlocal spell spelllang=en_us
map <S-F7> <Esc>:setlocal nospell

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

let g:pymode = 1
let g:pymode_warnings = 1
let g:pymode_trim_whitespaces = 1
let g:syntastic_quiet_messages = { "level": "warnings",
                                     \ "type":  "style"}
let g:syntastic_python_checkers = ['pep8']
let $PATH = $PATH . ':' . expand("~/.cabal/bin")

"configure vim for python
autocmd BufRead *.py nmap <C-p> :!python %
autocmd BufRead *.py nmap <C-i> :!python -i %

autocmd BufRead *.py set tabstop=4
autocmd BufRead *.py set nowrap
autocmd BufRead *.py set go+=b

"and for java
autocmd BufRead *.java nmap <C-p> :!javac -g *.java

"compile latex
autocmd BufRead *.tex nmap <C-p> :!pdflatex %

"open html files
autocmd BufRead *.html nmap <C-p> :!open %
