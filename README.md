# .files

## How to clone
--- 
```shell
alias config='/usr/bin/git --git-dir=$HOME/.files/ --work-tree=$HOME'
```

```shell
git clone --bare <git-repo-url> $HOME/.files
```

```shell
config checkout
```

```shell
config config --local status.showUntrackedFiles no
```

## ZSH Extras
- [Pure Prompt](https://github.com/sindresorhus/pure)

## Tmux Extras

- [TPM](https://github.com/tmux-plugins/tpm)

## Troubleshooting
When checking out, you might get some permission errors:

```
error: The following untracked working tree files would be overwritten by checkout:
    .bashrc
    .gitignore
Please move or remove them before you can switch branches.
Aborting
```
To fix this, run the below command which will create a backup directory and copy over config files.

```shell
mkdir -p .config_backup && \
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config_backup/{}
```
