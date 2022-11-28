
if has("win64") || has("win32") || has("win16")
	source $MYVIMRC/../plugins-call.vim
	source $MYVIMRC/../appearance.vim 
	source $MYVIMRC/../general.vim 
	source $MYVIMRC/../keybinds.vim
	source $MYVIMRC/../plugins-conf.vim
else
	source ~/.config/nvim/plugins-call.vim
	source ~/.config/nvim/appearance.vim 
	source ~/.config/nvim/general.vim 
	source ~/.config/nvim/keybinds.vim
	source ~/.config/nvim/plugins-conf.vim
endif
