# Custom config for NvChad
These are the custom user files for NvChad. After installing NvChad, they are mean't to live in ~/.config/nvim/lua/custom , which is git-ignored by NvChad. 

# Setup From scratch
I recommend deleting everything and starting from scratch

```bash
rm -rf ~/.config/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim
```

Throwing in an `which nvim` and `nvim -v` can't hurt, just to make sure you know where things are coming from.

## 0, Nerd font installation
If you aren't already using one, you'll need a nerd for NvChad as this is where it will get special characters from. I'm using [RobotMono Nerd Font Mono, which you can find here](https://www.nerdfonts.com/font-downloads) along with many other options. After downloading and installing it, set your terminal to use it (for iTerm2 this is under Settings->Profile->Text->Font).

## 1. Install NvChad
In our case, we're going to use 2.0 (not the current 2.5) since it's the pattern we want for custom configs.
```bash
git clone -b v2.0 git@github.com:NvChad/NvChad.git ~/.config/nvim && nvim
```
Once nvim opens, you'll get some installs. Then run `:MasonInstallAll` and `:Lazy sync`. Close and re-open vim.


## 2. (Optional) Add the vim alias
Since I never want to use real vim, I set the vim command to alias nvim instead. Plus, `vi` still exists to use pure vim.
```bash
echo "# neovim alias\nalias vim='nvim'" >> .zshrc
```

## 3. Clone this repo
```bash
git clone git@github.com:NvChad/NvChad.git ~/.config/nvim/lua/custom
```
If all done correctly, you should have a `~/.config/nvim` that you can pull from NvChad, and a `~/.config/nvim/lua/custom` (which NvChad ignores) that you can pull from this repo.

### Start nvim 
In the NvChad install you should have already loaded the base plugins there. Now, run `:Lazy sync` and that should install some plugins. You can also use `:MasonInstallAll` to make sure that plugins are installed as well.


## Did it work?
If everything has worked, `<leader> ch` should bring up the cheatsheet, and under General you should see two of the custom commands in there - Markdown Preview (`<leader> + mp`) and  the Telescope keymaps (`<leader> + fk`, this one is a real one in newer versions sometimes, but I found it inconsistent so I just put it there.).

There are some other things you can try, like :DBUI which should start the dadbod database UI utility. 

## Misc
To update - warning, could break things in your config.
```bash
which nvim && nvim --version
brew upgrade neovim
cd ~/.config/nvim && git pull
```
