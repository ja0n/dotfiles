if [ -z "$DOTFILES" ]; then
  DOTFILES=~/Projects/dotfiles
fi

function create_links {
  ln -sf $DOTFILES/git/gitconfig ~/.gitconfig
  ln -sf $DOTFILES/git/gitignore ~/.gitignore
  ln -sf $DOTFILES/vim/vimrc ~/.vimrc
  ln -sf $DOTFILES/zsh/zshrc ~/.zshrc
  ln -sf $DOTFILES/zsh/aliases ~/.aliases
  ln -sf $DOTFILES/zsh/zsh_profile ~/.zsh_profile
  ln -sf $DOTFILES/tmux/tmux.conf ~/.tmux.conf
}

create_links
