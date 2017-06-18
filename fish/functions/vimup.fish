function vimup --description 'upgrade vim plugins'
	vim +slient +VimEnter +PlugInstall +PlugUpdate +qall $argv;
end
