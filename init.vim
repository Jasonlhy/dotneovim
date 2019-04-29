call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'editorconfig/editorconfig-vim'
Plug 'vim-airline/vim-airline'
Plug 'mattn/emmet-vim'
Plug 'sudar/comments.vim'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""
" => CtrlP
""""""""""""""""""""""""""""""""""""""""""""""""""
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
" git integratoin
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

""""""""""""""""""""""""""""""""""""""""""""""""""
" => Global setting of document
""""""""""""""""""""""""""""""""""""""""""""""""""
"set no compatible with vi
set nocp

"set line absolute number 
set relativenumber 

"show the comment when we type it
set showcmd 

"detect the file type
filetype on 

"make plugin on for some filetype
filetype plugin on 

"set hightlight when we do searching 
set hlsearch

" highlight matching when entering keyword
set incsearch

" show matching when text indictor on it
set showmatch

" define key leader
let mapleader =","

" status bar always shown
set laststatus=2

" short cut to edit the files at the same director as the buffer
nnoremap <Leader>e :e <C-R>=expand('%:p:h') . '/'<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" => Setting for convenience
""""""""""""""""""""""""""""""""""""""""""""""""""
" when the page starts to scroll, keep the cursor 3 lines from the top and the
" bottom
set scrolloff=3

" allow switching edited buffers without saving
set hidden

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$

"clearing highlighted search
nmap <silent> <leader>/ :nohlsearch<CR>


" Remove multiple blank line
" Only leave one blank line
" \n stand for EOL
" \r stand for return character to be inserted
command RemoveMultipleLines %s/\n\{3,}/\r\r/g  

" next line is really next line
map j gj
" previous line is really previous line
map k gk

""""""""""""""""""""""""""""""""""""""""""""""""""
" => Appearance setting of document
""""""""""""""""""""""""""""""""""""""""""""""""""
"special indent based on the file type
filetype indent on 
"set 256 colors
set t_Co=256 
"use nice color on iterm2
set termguicolors
syntax on 
colorscheme desert

""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
""""""""""""""""""""""""""""""""""""""""""""""""""
"auto indent of new line accoring to the previous line
set autoindent 
"smart indent for c program
set smartindent
" add tab of new line
set smarttab
" define smarttab length
set shiftwidth=4
" use space instead of tab
set expandtab
" 4 space when << and >>
set tabstop=4

" format the file
map <leader>fm gg=G'.
" set cursorline
set cursorline

""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
""""""""""""""""""""""""""""""""""""""""""""""""""
"Turn backup off
set nobackup
set nowb
set noswapfile
map <leader>cd :call ChangeDir()<CR>
func! ChangeDir()
    :cd %:p:h
    :echo "Change to current Directory"
endfunc

""""""""""""""""""""""""""""""""""""""""""""""""""
" => Switching Between each window more easier
""""""""""""""""""""""""""""""""""""""""""""""""""
map <Space>h  <C-W>h
map <Space>j  <C-W>j
map <Space>k  <C-W>k
map <Space>l  <C-W>l

""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTreeSection
""""""""""""""""""""""""""""""""""""""""""""""""""
" open a tree
map <leader>nt :NERDTreeFind<CR>
" Open the three starting from the current Directory
let NERDTreeChDirMode=2
