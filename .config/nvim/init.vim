""""""""""""""""""""""
"  Init vim config  "
""""""""""""""""""""""

" Source plugins
source $HOME/.config/nvim/vim-plug/plugins.vim

" Coc settings
source $HOME/.config/nvim/plug-config/coc/coc-init.vim

" General settings
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/commands.vim

" key mappings
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/keys/snippets.vim
source $HOME/.config/nvim/keys/which-key.vim

" Specific plugin settings
source $HOME/.config/nvim/plug-config/arduino.vim
source $HOME/.config/nvim/plug-config/coderunner.vim
source $HOME/.config/nvim/plug-config/codi.vim
source $HOME/.config/nvim/plug-config/easymotion.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/quickscope.vim
source $HOME/.config/nvim/plug-config/rainbow.vim
source $HOME/.config/nvim/plug-config/rnvimr.vim
source $HOME/.config/nvim/plug-config/signature.vim
source $HOME/.config/nvim/plug-config/signify.vim
source $HOME/.config/nvim/plug-config/sneak.vim
source $HOME/.config/nvim/plug-config/start-screen.vim
source $HOME/.config/nvim/plug-config/lualine.vim

" Themes
source $HOME/.config/nvim/plug-config/airline.vim

lua << EOF
require('lualine').get_config()
require('lualine').setup()
EOF

" Autorun
source $HOME/.config/nvim/autorun/auto-source.vim
source $HOME/.config/nvim/autorun/on-startup.vim
