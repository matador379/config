" vim config file
" M.M.Radoja

"Colours and syntax {{{
        colorscheme desert
        syntax enable "enable syntax processing
        autocmd BufRead,BufNewFile *.tex setlocal spell spelllang=en_gb
        "highlight cterm=underline ctermbg=Blue ctermfg=White
"}}}
"Key binding {{{
"set backspace=indent,eol,start
"fixdel
" }}}
"Spaces and Tabs {{{
set tabstop=4
set softtabstop=4
set expandtab "tabs become spaces
"}}}
"UI Config {{{
set number "display line number
filetype indent on "load filetype-specific indent files

set wildmenu

set lazyredraw "redraw only when need to

set showmatch "highlight matching [{()}]
"}}}
"Searching {{{
set incsearch "search as characters are entered
set hlsearch "highlight matches
"}}}
"Folding {{{
set foldenable	"enable folding
set foldlevelstart=5 "open 5 folds by default
set foldnestmax=10
set foldmethod=indent
"}}}
"Textwidth {{{
set tw=70
" }}} 

" vim:foldmethod=marker:foldlevel=0
