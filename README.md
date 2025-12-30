# Custom config for NvChad
These are the custom user files for NvChad. After installing NvChad, they are mean't to live in ~/.config/nvim/lua/custom , which is git-ignored by NvChad. 

# Setup
## From scratch
### 1. Install NeoVim
```bash
brew install neovim
```
### 2. install NvChad
clone NvChad (https://github.com/NvChad/NvChad) into .config


## Misc
To update - warning, could break things in your config.
```bash
which nvim && nvim --version
brew upgrade neovim
cd ~/.config/nvim && git pull
```
