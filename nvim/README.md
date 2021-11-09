# My nvim config
My nvim config for primarily JavaScript / TypeScript development.

## Installation
#### 1. Install nvim
```
brew install nvim
```

#### 2. Install vim-plug
Please refer to https://github.com/junegunn/vim-plug

#### 3. Create a symbolic link of the nvim folder to ~/.config/nvim
```
ln -s "$(pwd)" ~/.config/nvim
```

#### 4. Start nvim and open init.vim
```
nvim init.vim
```

Please ignore the errors untill plugins have been installed.

#### 5. Install plugins
```
:PlugInstall
```

#### 6. Run checkhealth
```
:checkhealth
```

Follow the advice given accordingly.
