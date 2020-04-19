# .vim
My .vim setup.

Uses [pathogen](https://github.com/tpope/vim-pathogen) and git submodules for plugin managment.

## Common Operations

### Fresh Pull
```bash
git clone --recursive https://github.com/sungeunchoi-kr/.vim.git .vim
```

### Update
```bash
git submodule update --recursive --remote
```

### Adding New Modules
```bash
cd ~/.vim/bundle/
git submodule add REPOSITORY
```

### Removing Modules
See <https://stackoverflow.com/questions/1260748/how-do-i-remove-a-submodule#1260982>
```
git rm the_submodule
rm -rf .git/modules/the_submodule
```

Reference: <https://mendo.zone/fun/neovim-setup-haskell/#how-i-vim>
