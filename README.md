## Requirements

Requires vim v8.2, node v14, ripgrep, bat, git-delta

In shell config:
```sh
export RIPGREP_CONFIG_PATH=$HOME/.ripgreprc
```

In `.ripgreprc`:
```
--max-filesize=50K
```


## Installation

```bash
git clone https://github.com/tsyopa/vimrc.git ~/.vim
ln -s .vim/vimrc ~/.vimrc
```

Run vim and then :PlugInstall

