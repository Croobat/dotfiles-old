" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize +2<CR>
nnoremap <M-l>    :vertical resize -2<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap zx <Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
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

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da

" Close buffer
nnoremap <leader>q :Sayonara<CR>

" Coc
nnoremap <leader>coc :CocToggle<CR>

" Fzf
nnoremap <leader><leader> :Rg<CR>
nnoremap <leader>fi       :Files<CR>
nnoremap <leader>fz       :FZF -e -i<CR>
nnoremap <leader>C        :Colors<CR>
nnoremap <leader>b        :Buffers<CR>
nnoremap <leader>l        :Lines<CR>
nnoremap <leader>g        :GFiles<CR>
nnoremap <leader>ag       :Ag!<C-R><C-W><CR>
nnoremap <leader>h        :History<CR>

" Colorizer
nnoremap <leader>c        :ColorizerToggle<CR>
