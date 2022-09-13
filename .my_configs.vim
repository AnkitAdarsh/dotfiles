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
