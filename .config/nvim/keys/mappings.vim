""""""""""""""""""""""
"  Custom mappings  "
""""""""""""""""""""""

nnoremap <space> <nop>

" Disable Ex mode
map q: <Nop>
nnoremap Q <nop>

" Split long lines
nnoremap Q gqq

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize +2<CR>
nnoremap <M-l>    :vertical resize -2<CR>

" I hate escape more than anything else
inoremap jk <Esc>

" Fix multiline segments
nnoremap j gj
nnoremap k gk

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Folding
nnoremap , za
" New fold structure
nnoremap 'm <esc>I## {{{<CR>  <backspace><CR>}}}<esc>kkI##  <esc>i

" insert line
nnoremap <enter> o<esc>
nnoremap <A-enter> O<esc>

" Word wrap
nnoremap <A-z> :set wrap!<CR>

" Faster scrolling
nnoremap <c-j> 5j
nnoremap <c-k> 5k
xnoremap <c-j> 5j
xnoremap <c-k> 5k
