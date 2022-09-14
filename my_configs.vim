" Color Theme
let g:gruvbox_italic=1
color gruvbox
set background=dark

" Line Numbers Relative
set relativenumber

" Custom Shortcuts for Save and Quit
nmap <leader>w :wq!<cr>
nmap <leader>q :q!<cr>

" Tab Settings
set tabstop=4 "Tab expands to 4 Spaces
set shiftwidth=4
set softtabstop=4
set expandtab

" Enable Smart Indent
set smartindent
set noswapfile
set autoindent
set autoread

" Stop Auto Commenting next line
set formatoptions-=cro

" Split Settings
set splitbelow splitright

" Persistent Undo between Opening and Closing
set undofile

" Very useful for YAML Files
autocmd Filetype yaml set cursorcolumn
autocmd Filetype yml set cursorcolumn

" Smart Search
set ignorecase
set smartcase

" Smart Wrapping
set wrap
set formatoptions=qrn1


" Map <Space> to / (search) and <Ctrl>+<Space> to ? (backwards search):
" map <space> /
" map <C-space> ?
" map <silent> <leader><cr> :noh<cr>

" Disable highlights when you press <leader><cr>:
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows (<ctrl>j etc.):
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Useful mappings for managing tabs:
map <leader>tnn :tabnew<cr>
map <leader>tn :tabnext<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <C-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer:
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Toggle paste mode on and off:
map <leader>pp :setlocal paste!<cr>

" Quickly insert parenthesis/brackets/etc.:
inoremap $1 ()<esc>i
inoremap $2 []<esc>i
inoremap $3 {}<esc>i
inoremap $4 {<esc>o}<esc>O
inoremap $q ''<esc>i
inoremap $e ""<esc>i
inoremap $t <><esc>i

" Insert the current date and time (useful for timestamps):
iab xdate <C-r>=strftime("%d/%m/%y %H:%M:%S")<cr>


" NerdTree Configurations
let g:NERDTreeShowHidden=1
let g:NERDTreeAutoDeleteBuffer=1
let g:NERDTreeQuitOnOpen=0
let g:NERDTreeWinPos = "left"
" Open nerd tree at the current file or close nerd tree if pressed again.
nnoremap <silent> <expr> <Leader>n g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"

" Undo Levels and Backspace Behaviour
set undolevels=1000 " Number of undo levels
set backspace=indent,eol,start  " Backspace behaviour

" Encoding
set encoding=utf-8

" Speed up scrolling in Vim
set ttyfast

" Turn on syntax highlighting.
syntax on

" Search as characters are entered
set incsearch

" Abbreviation
ab gt ✅
nnoremap <leader>dt :put=strftime('@@%Y-%m-%d')<CR>

" For plug-ins to load correctly.
filetype plugin indent on

" Turn off modelines
set modelines=0

" SnipMate Parser
let g:snipMate = { 'snippet_version' : 1 }
