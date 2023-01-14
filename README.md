# Dotfiles

## Create dotfiles repo

```console
git init --bare $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME
dotfiles config --local status.showUntrackedFiles no
```

## Add dotfiles to the repository
```console
dotfiles add <file>
dotfiles commit -m "commit message"
dotfiles push
```

## Clone the repository

```console
git clone --bare <remote url> $HOME/.dotfiles
git --git-dir=$HOME/.dotfiles --work-tree=$HOME checkout
```
