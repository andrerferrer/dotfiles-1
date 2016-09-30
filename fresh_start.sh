
<<<<<<< HEAD
ln -sfn ~/code/dotfiles/zshrc ~/.zshrc
ln -sfn ~/code/dotfiles/vimrc ~/.vimrc
ln -sfn ~/code/dotfiles/tmux.conf ~/.tmux.conf
=======
ln -s ~/code/dotfiles/zshrc ~/.zshrc
ln -s ~/code/dotfiles/vimrc ~/.vimrc
ln -s ~/code/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/code/dotfiles/aliases ~/.aliases
>>>>>>> staging

sudo cp -rp /bin/* /usr/local/bin/
sudo cp -rp /tmux/* ~/.tmux/
chmod +x ~/.tmux/*.sh

# tmux plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm



chsh -s $(which zsh)

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

##### GIT configurations

git config --global init.templatedir '~/code/dotfiles/git_template'
chmod a+x ~/code/dotfiles/git_template/hooks/*

git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.unstage "reset HEAD"
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global alias.brs "for-each-ref --sort=committerdate refs/heads/ --format='%(committerdate:short) %(refname:short)'"
git config --global alias.glog 'log -E -i --grep'
git config --global alias.car 'commit --amend --no-edit'
git config --global alias.uncommit 'reset --soft HEAD^'


git config --global alias.aa "add --all"
git config --global alias.adp "add --patch"
git config --global alias.b "branch"
git config --global alias.ri "rebase -i"
git config --global alias.sdot "status . --short --branch"
git config --global alias.stat "show --stat"
git config --global alias.si "status --ignored"
git config --global alias.dc "diff --word-diff --cached --color-words"
git config --global alias.df "diff --word-diff --color-words"
git config --global alias.pl "pull"
git config --global alias.plr "pull --rebase"
git config --global alias.rim "!git rebase --interactive $(git merge-base master HEAD)"
git config --global alias.riu "!git rebase -i $(git upstream)"
git config --global alias.sl "log --oneline --decorate --graph -20"
git config --global alias.slap "log --oneline --decorate --all --graph"
git config --global alias.slp "log --oneline --decorate --graph"
git config --global alias.upstream "rev-parse --abbrev-ref --symbolic-full-name @{u}"

git config --global alias.rim 'git config --global alias.plr "pull --rebase" rebase --interactive $(git merge-base master HEAD)"git config --global alias.riu "git config --global alias.plr "pull --rebase" rebase -i $(git upstream)"git config --global alias.sl "log --oneline --decorate --graph -20'


git config --global push.default upstream
git config --global fetch.prune true


git config --global diff.tool vimdiff
git config --global merge.tool vimdiff
git config --global difftool.prompt false

git config --global merge.tool diffmerge


# load zshrc file
source ~/.zshrc
