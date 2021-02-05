# Zen alias
Local alias done correctly

### Configure in zsh

clone plugin from github
```bash
git clone https://github.com/Gokuldroid/zen-alias ~/.oh-my-zsh/plugins/zen-alias
```

check if the plugin is cloned correctly

```bash
ls ~/.oh-my-zsh/plugins
```

open .zshrc

```bash
open ~/.zshrc
```

```bash
vim ~/.zshrc
```

add zen-alias like this

```bash
# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    brew
    heroku
    gatsby
    yarn
    zen-alias
)
```

updating the plugin
```bash
cd <cloned directory> && git pull
```

### Configure in bash

copy the file to root directory or somewhere in your system.
```bash
curl -S https://raw.githubusercontent.com/Gokuldroid/zen-alias/main/zen-alias.plugin.zsh > ~/.zen-alias.bash
```

source the file in bashrc
```bash
open ~/.bashrc
```

add this line at the end of the bashrc
```bash
source ~/.zen-alias.bash
```
