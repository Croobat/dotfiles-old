" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

    " Dracula theme
    Plug 'Mofiqul/dracula.nvim'

    " File Explorer
    Plug 'scrooloose/NERDTree'

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " Intellisense Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Status line
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Ranger FM
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    
    " Sayonara (close buffers)
    Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' }

    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'

    " Colors
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'junegunn/rainbow_parentheses.vim'

    " More target operators
    Plug 'wellle/targets.vim'

    " Visible marks
    Plug 'kshenoy/vim-signature'

call plug#end()

