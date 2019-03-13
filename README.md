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

### 2. Other things I use

* [Waka Time to track programming time](https://wakatime.com/)
* [z - used for jumping to files more quickly](https://github.com/rupa/z) - should be installed via omf config as plugin
* [trash - moves things to trash from command line](http://hasseg.org/trash/)
* tree - `brew install tree`
* silver searcher - `brew install the_silver_searcher`
* ack - `brew install ack`
* yarn - `brew install yarn`
