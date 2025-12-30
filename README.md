# Custom config for NvChad
These are the custom user files for NvChad. After installing NvChad, they are mean't to live in ~/.config/nvim/lua/custom , which is git-ignored by NvChad. 

# Setup
## From scratch
### 0. Install a nerd font for your terminal
If you aren't already using one, you'll need a nerd for NvChad as this is where it will get special characters from. I'm using [RobotMono Nerd Font Mono, which you can find here](https://www.nerdfonts.com/font-downloads) along with many other options. After downloading and installing it, set your terminal to use it (for iTerm2 this is under Settings->Profile->Text->Font).
### 1. Install NeoVim
```bash
brew install neovim
```
### 2. install NvChad
clone NvChad (https://github.com/NvChad/NvChad) into .config
```bash
git clone git@github.com:NvChad/NvChad.git ~/.config/nvim --depth=1
```
### 3. (Optional) Add the vim alias
Since I never want to use real vim, I set the vim command to alias nvim instead. Plus, `vi` still exists to use pure vim.
```bash
echo "# neovim alias\nalias vim='nvim'" >> .zshrc
```
## Clone this repo
```bash
git clone git@github.com:NvChad/NvChad.git ~/.config/nvim/lua/custom
```
If all done correctly, you should have a `~/.config/nvim` that you can pull from NvChad, and a `~/.config/nvim/lua/custom` (which NvChad ignores) that you can pull from this repo.

## Misc
To update - warning, could break things in your config.
```bash
which nvim && nvim --version
brew upgrade neovim
cd ~/.config/nvim && git pull
```
