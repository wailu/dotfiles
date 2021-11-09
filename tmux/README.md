# tmux
:slightly_smiling_face:

## Installation
#### 1. Install tmux
```
brew install tmux
```

#### 2. Create a symbolic link of .tmux.conf to ~/.tmux.conf
```
ln -s "$(pwd)/.tmux.conf" ~/.tmux.conf
```

#### 3. Add the scripts folder into $PATH

```
# this goes in your .zshrc
typeset -U path
path=(
  $path
  /Users/wailu/Dev/dotfiles/tmux/scripts # change this accordingly!
)
export PATH
```

## Scripts

Do ensure that all scripts are executable.

If not:
```
# in the scripts folder:
chmod +x *
```

#### 1. dev-tmux

Run dev-tmux to create 3 panes, with the top pane running `nvim` like this:
```
----------------
|     nvim     |
|              |
|--------------|
|       |      |
----------------
```

#### (check back for more useful scripts in the future...)
