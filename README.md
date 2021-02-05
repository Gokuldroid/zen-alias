# Zen alias
Local alias done correctly

Aim: we can configure aliases very easily in bash or zsh. but those aliases are global to all directory. sometimes we need aliases or commands only for some directories alone. this plugin makes the process easy.

<br>

### Configure in zsh
------------

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
    zen-alias
)
```

updating the plugin
```bash
cd <cloned directory> && git pull
```
<br>

### Configure in bash
-----

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
<br>

### Aliases syntax
-----

Create *.aliases* file in the root directory of the project. add your per project aliases like this.

```
yc: yarn w @zen-alias/client
ys: yarn w @zen-alias/server
ycommon: yarn w @zen-alias/common
ybg: yarn w @zen-alias/bg-jobs
yb: yarn build
yw: yarn watch
```
<br>
## Tips:

#### Excluding the .aliases file in git tree
----
incase if you don't want others to use your aliases, you can add it global .gitignore or project .gitignore

```bash
cd ~
touch .gitignore_global
git config --global core.excludesfile ~/.gitignore_global
echo ".aliases" > ~/.gitignore_global
```

<br>

#### Init command for a directory.
---
we might want to execute some script as soon as we enter the project. like updating local branch or setting up nvm or rvm version etc. zen-alias provides an easy way for this.

define a zen-alias like this,
```bash
init_zen_dir : 
```
