if [ -z "$1" ]; then
	echo "Usage: sh $0 [target]" 1>&2
	exit 1
fi

base_directory="$(pwd)"

case "$1" in
	gdb)
		ln -sf "$base_directory/config_gdb" $HOME/.gdbinit ;;
	git)
		ln -sf "$base_directory/config_git" $HOME/.gitconfig ;;
	nvim)
		mkdir -p $HOME/.config
		ln -sf "$base_directory/config_nvim" $HOME/.config/nvim ;;
	sh)
		ln -sf "$base_directory/config_sh" $HOME/.profile ;;
	tmux)
		ln -sf "$base_directory/config_tmux" $HOME/.tmux.conf ;;
	vim)
		ln -sf "$base_directory/config_vim" $HOME/.vimrc ;;
	*)
		echo "$0: Invalid target" 1>&2
		exit 1
esac
