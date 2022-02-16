""""""""""""""""""""""
"  General sets  "
""""""""""""""""""""""

" set leader key
let g:mapleader = "\<Space>"

syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
" set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			       " Show the cursor position all the time
set cmdheight=1                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=4                           " Insert 3 spaces for a tab
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set number                              " Line numbers
set background=dark                     " tell vim what the background color looks like
set showtabline=1                       " Show tabs if >=2
" set noshowmode                        " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set cursorline                          " Enable highlighting of the current line
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
set number                              " Number line "
" set relativenumber                    " Relative number line
set numberwidth=1                       " Number distance"
set autochdir                           " Your working directory will always be the same as your working directory"
set nohlsearch                          " Disable highlighting in search"
set ignorecase                          " Case insensitive search"
set foldmethod=marker                   " Marker fold method {{{}}}"
set signcolumn=yes                      " Enable column next to line number"
set list lcs=tab:\|\                    " Indent line for tabs"


" Disable auto comment in new line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

""""""""""""""""""""""
"  Color scheme mod  "
""""""""""""""""""""""

colorscheme dracula
highlight LineNr guifg=#d8e17e
highlight Comment guifg=#8696da
