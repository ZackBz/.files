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
alias config='/usr/bin/git --git-dir=$HOME/.files/ --work-tree=$HOME'
```
```shell
config checkout
```

```shell
config config --local status.showUntrackedFiles no
```

# Troubleshooting
---

```shell
mkdir -p .config_backup && \
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config_backup/{}
```
