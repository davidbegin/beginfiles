main:
	stow --dotfiles -R --verbose=3 -t ~/.config/tmux tmux
	stow --dotfiles -R --verbose=3 -t ~/.config/nvim nvim
	stow --dotfiles -R --verbose=3 -t ~/.config/zsh zsh
	stow --dotfiles -R --verbose=3 -t ~/.config aliases
	stow --dotfiles -R --verbose=3 -t ~/.config/workstations workstations
