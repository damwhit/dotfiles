dotfiles
========

## Setup Notes

### 1. Symlinks

```
ln -s ~/dotfiles/omf ~/.config/omf
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.vim ~/.vim
ln -s ~/dotfiles/.pryrc ~/.pryrc
```

### 2. Install xcode command line tools, brew, etc

* http://mod0.turing.io/setup-instructions
  
### 3. fish shell installation
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

### 4. Install rbenv and node

* https://github.com/turingschool-examples/backend_module_0_capstone#environment
* https://github.com/turingschool-examples/frontend-module-0-capstone#environment


### 5. Other things I use

* [z - used for jumping to files more quickly](https://github.com/rupa/z) - `omf install z`
* rbenv omf autoload - `omf install rbenv`
* [trash](http://hasseg.org/trash/) `brew install trash`
* tree - `brew install tree`
* silver searcher - `brew install the_silver_searcher`
* ack - `brew install ack`
* yarn - `brew install yarn`
* macvim - `brew install macvim`

### 6. Fancy fonts

* Used powerline with fancy at some point
* FiraCode:
```
brew tap caskroom/fonts
brew cask install font-fira-code
```  
