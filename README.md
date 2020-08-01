dotfiles
========

## Setup Notes

### Symlinks

```
ln -s ~/dotfiles/omf ~/.config/omf
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.vim ~/.vim
ln -s ~/dotfiles/.pryrc ~/.pryrc
ln -s ~/dotfiles/.emacs.d ~/.emacs.d
```

### Install xcode command line tools, brew, etc

* http://mod0.turing.io/setup-instructions

### fish shell installation
Download fish shell

```sh
brew install fish
```

Add Fish to `/etc/shells`:

```sh
echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
```

Make Fish your default shell:

```sh
chsh -s /usr/local/bin/fish
```

Install omf [oh my fish](https://github.com/oh-my-fish/oh-my-fish)

### Install rbenv and node

* https://github.com/turingschool-examples/backend_module_0_capstone#environment
* https://github.com/turingschool-examples/frontend-module-0-capstone#environment


### Other useful tools and integrations

```sh
omf install z
omf install rbenv
brew install trash
brew install tree
brew install the_silver_searcher
brew install ack
brew install yarn
brew install macvim
```

### Install vimplug

```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### Fancy fonts

* Used powerline with fancy at some point
* FiraCode:

```sh
brew tap caskroom/fonts
brew cask install font-fira-code
```  
