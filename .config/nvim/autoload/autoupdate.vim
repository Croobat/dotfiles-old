autocmd BufWritePost *xbindkeysrc !killall xbindkeys; xbindkeys --poll-rc
autocmd BufWritePost *sxhkdrc !killall sxhkd; setsid sxhkd -t 2 &
autocmd BufWritePost *xchainkeys.conf !killall xchainkeys; xchainkeys &

