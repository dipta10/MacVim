## Installation:

Download and install [Iterm2](https://www.iterm2.com/downloads.html).
> Now if you are going for the full setup from scratch, then start by installing Tmux and Vifm first.
Download and Install [MacVim](https://github.com/macvim-dev/macvim/releases/tag/snapshot-155) if you're using Mac.

```
git clone https://github.com/dipta10/MacVim.git ~/.vim
```

Remove files:
```
rm ~/.vimrc
rm ~/.bashrc
rm ~/.bash_profile
```

Create symblinks:

```
ln -s ~/.vim/.vimrc ~/.vimrc
ln -s ~/.vim/.bashrc ~/.bashrc
ln -s ~/.vim/.bash_profile ~/.bash_profile
ln -s ~/.vim/.ycm_extra_conf.py ~/.ycm_extra_conf.py
ln -s ~/.vim/.zsh ~/.zsh
ln -s ~/.vim/.zshrc ~/.zshrc
```

If you're using submodule:
```
git submodule init
git submodule update
```

Install [Vundle](https://github.com/VundleVim/Vundle.vim)
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
Copy the `vim_runtime` folder into root `~` folder and rename it to`.vim_runtime`.

Now inside Vim:
```
:PluginInstall
```
Source the bashrc file:
```
source ~/.bashrc
```

### Tmux
First install Tmux.
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null
brew install tmux
```
Kill all the session (if any):
```
pkill -f tmux
```
Now just clone the repository.
```
git clone https://github.com/dipta10/MacTmuxSettings.git ~/.tmux
```
Create Symblink:
```
ln -s ~/.tmux/.tmux.conf ~/.tmux.conf
```

### Vifm
Install Vifm.
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null
brew install vifm
```
Clone the repo.
```
git clone https://github.com/dipta10/macVifmSettings.git ~/.config/vifm
```
If you're not able to clone because of the folder `~/.config/vifm` being non-empty, just copy and replace the `colors` folder and `vifmrc` file.