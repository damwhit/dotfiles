dotfiles
========

## Setup Notes

### 1. Symlinks

```
ln -s ~/dotfiles/omf ~/.config/omf
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.vim/* ~/.vim
ln -s ~/dotfiles/.pryrc ~/.pryrc
```

### 2. Other things I use

* [Waka Time to track programming time](https://wakatime.com/)
* [z - used for jumping to files more quickly](https://github.com/rupa/z) - there is also a omf plugin
* [trash - moves things to trash from command line](http://hasseg.org/trash/)
* tree - `brew install tree`
* silver searcher - `brew install the_silver_searcher`
* ack - `brew install ack`

### 3. Fonts

* Used powerline with fancy at some point
* FiraCode:
```
brew tap caskroom/fonts
brew cask install font-fira-code
```  
