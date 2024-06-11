" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Set tab width to 4 columns.
set tabstop=4

" Add numbers to each line on the left-hand side.
set number

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Highlight cursor line underneath the cursor vertically.
set cursorcolumn

" While searching though a file incrementally highlight matching characters as you type.
" '/' inits from back to front | '?' inits from front to back ...
set incsearch

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" Enable full functionality (Rust)
syntax enable
filetype plugin indent on

" PLUGINS 
call plug#begin('~/.vim/plugged')

	Plug 'dense-analysis/ale'

	Plug 'preservim/nerdtree'

	" Rust support
	"Plug 'rust-lang/rust.vim'
	"Plug 'racer-rust/vim-racer'
	" Use release branch (recommended)
	"Plug 'neoclide/coc.nvim', {'branch': 'release'}
	" JavaScript support
	"Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
	"Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
	"Plug 'othree/jspc.vim'
	"Plug 'maksimr/vim-jsbeautify'
	" Statusbar
	" Java support
	Plug 'artur-shaik/vim-javacomplete2'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
call plug#end()

"Java requirements
autocmd FileType java setlocal omnifunc=javacomplete#Complete

nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
imap <F4> <Plug>(JavaComplete-Imports-AddSmart)
nmap <F5> <Plug>(JavaComplete-Imports-Add)
imap <F5> <Plug>(JavaComplete-Imports-Add)
nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)
imap <F6> <Plug>(JavaComplete-Imports-AddMissing)
nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
imap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
"COLORS PLUGIN
"call plug#begin('~/.vim/colors')
 " Plug 'wojciechkepka/vim-github-dark'
"call plug#end()

"set rtp+=~/.vim/plugged/nerdtree
" MAPS
map <C-n> : NERDTreeToggle<CR>
" Plus configuration                                                    
let NERDTreeShowHidden=0 " Show files '.'                               
let NERDTreeWinSize=24    " Width window NERDTree                          
autocmd vimenter * NERDTree | wincmd p " Open automatically 'file window'

" You can split the window in Vim by typing :split or :vsplit.
" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Vimscript initialization file
colorscheme wildcharm 

" STATUS LINE ------------------------------------------------------------ {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2

" }}}
