sudo.zsh
========

A zsh plugin to use Esc+S to prepend sudo to a command with vi keybindings.

```bash
some really long zsh command
```

Just remembered you'll have to sudo? Assuming you have [vi keybindings](http://www.techrepublic.com/blog/linux-and-open-source/using-vi-key-bindings-in-bash-and-zsh/), you
can now hit Esc to go into command mode, and then Esc+S to prepend a sudo to your long command without losing your place.

Installation
--------

Assuming you have [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh), you can
simply write

```bash
git clone git@github.com:robertzk/sudo.zsh.git ~/.oh-my-zsh/custom/plugins/sudo
echo "plugins+=(sudo)" >> ~/.zshrc
```

(Alternatively, you can place the `sudo` plugin in the `plugins=(...)` local in your `~/.zshrc` manually.)

Unfortunately, due to use of `zle` (zsh line editor), this shell script will not work on bash terminal.
