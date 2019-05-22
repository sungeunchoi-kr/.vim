# .vim
My .vim setup.

Uses [pathogen](https://github.com/tpope/vim-pathogen) and git submodules for plugin managment.

## Common Operations

### Fresh Pull
```bash
git clone --recursive https://github.com/johnmendonca/vimrc.git .vim
```

### Update
```bash
git submodule update --recursive --remote
```

### Adding New Modules
```bash
cd ~/.vim/bundle/
git submodule add https://github.com/neovimhaskell/haskell-vim.git
```

### Removing Modules
See <https://stackoverflow.com/questions/1260748/how-do-i-remove-a-submodule#1260982>

Reference: <https://mendo.zone/fun/neovim-setup-haskell/#how-i-vim>
