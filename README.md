## Installation:

Download and install [Iterm2](https://www.iterm2.com/downloads.html).
> Now if you are going for the full setup from scratch, then start by installing Tmux and Vifm first.
Download and Install [MacVim](https://github.com/macvim-dev/macvim/releases/tag/snapshot-155) if you're using Mac.

```
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

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
Copy the `.vim_runtime` folder into root `~` folder.

Now inside Vim:
```
:PluginInstall
```
Now You might end up with and error. You'll have to install [YouCompleteMe](https://github.com/Valloric/YouCompleteMe). (Assuming You've brew already installed)
```
brew install cmake
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
./install.py --java-completer
./install.py --all
```
Source the bashrc file:
```
source ~/.bashrc
```
Install Zsh.
```
brew install zsh
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
source ~/.zshrc
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

### bits/stdc++.h

```
cd /usr/local/include
mkdir include
cd include
vim stdc++.h
```
Copy this [content](https://gist.github.com/eduarc/6022859). Comment out line no 55.