""""""""""""""""""""""
"    NVIM Plugins    "
""""""""""""""""""""""

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    """"""""""""""""""""""
    "       theme        "
    """"""""""""""""""""""
    " Dracula theme
    Plug 'Mofiqul/dracula.nvim'


    """"""""""""""""""""""
    "    Programming     "
    """"""""""""""""""""""
    " Conqueror of completion (stable)
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Coc snippets
    Plug 'honza/vim-snippets'

    " code runner
    Plug 'xianzhon/vim-code-runner'

    " Realtime coding
    Plug 'metakirby5/codi.vim'

    " Arduino
    Plug 'stevearc/vim-arduino'

    """"""""""""""""""""""
    "    Syntax/typing   "
    """"""""""""""""""""""
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

    " Nerd commenter
    Plug 'preservim/nerdcommenter'

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " Auto close tags (press >)
    Plug 'alvan/vim-closetag'

    " Surround with ({""})
    Plug 'tpope/vim-surround'

    " Prettier post install (yarn install | npm install) then load plugin only for editing supported files
    Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

    """"""""""""""""""""""
    "     Navigation     "
    """"""""""""""""""""""
    " More target operators
    " Plug 'wellle/targets.vim'
    Plug 'wellle/targets.vim', {'on' : []}
    augroup LoadDuringHold_Targets
        autocmd!
        autocmd CursorHold,CursorHoldI * call plug#load('targets.vim') | autocmd! LoadDuringHold_Targets
    augroup end

    " Visible marks
    Plug 'kshenoy/vim-signature'

    " Quicker search (s)
    Plug 'justinmk/vim-sneak'

    " Better t and f
    Plug 'unblevable/quick-scope'

    " Focus (like qutebrowser)
    Plug 'easymotion/vim-easymotion'

    """"""""""""""""""""""
    "   File navigation  "
    """"""""""""""""""""""
    " File Explorer
    " Plug 'scrooloose/NERDTree'

    " Ranger FM
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

    " Sayonara (close buffers)
    Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' }

    " Startify (project manager vim)
    Plug 'mhinz/vim-startify'

    " Fuzzy finder
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'


    """"""""""""""""""""""
    "   Git integration  "
    """"""""""""""""""""""
     " Git integration
    Plug 'mhinz/vim-signify'

    " Git commands from vim (:Git)
    Plug 'tpope/vim-fugitive'

    " Hub commands (:GBrowse :GRemove)
    Plug 'tpope/vim-rhubarb'

    " Browse commits (:GV! :GV? :GV)
    Plug 'junegunn/gv.vim'


    """"""""""""""""""""""
    "   Aesthetics/QOL   "
    """"""""""""""""""""""
    " Status bar
     "Plug 'vim-airline/vim-airline'
     "Plug 'vim-airline/vim-airline-themes'
    Plug 'nvim-lualine/lualine.nvim'
    " If you want to have icons in your statusline choose one of these
    Plug 'kyazdani42/nvim-web-devicons'

    " Colors
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'junegunn/rainbow_parentheses.vim'

    " zen mode
    Plug 'junegunn/goyo.vim'

    " Which key
    Plug 'liuchengxu/vim-which-key'

    " neovim sudo privileges (:Sudawrite :Sudaread)
    Plug 'lambdalisue/suda.vim'

    " Show indent lines
    Plug 'Yggdroot/indentLine'

    " Add repeat dot with some plugins
    Plug 'tpope/vim-repeat'

    " Startup TB
    Plug 'tweekmonster/startuptime.vim'

    """
    call plug#end()

