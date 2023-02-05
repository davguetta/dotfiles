#!/bin/zsh

set -e

link() {
  from="$PWD/links/$1"
  to="$2"
  [[ ! $to ]] && to="$HOME/$1"

  if [[ ! -f $to ]]; then
    echo "-----> Linking $to"
    mkdir -p "`dirname $to`"
    ln -s $from $to
  fi
}

link .config/nvim/after/plugin/colors.lua
link .config/nvim/after/plugin/fugitive.lua
link .config/nvim/after/plugin/gitsigns.lua
link .config/nvim/after/plugin/harpoon.lua
link .config/nvim/after/plugin/lsp.lua
link .config/nvim/after/plugin/lualine.lua
link .config/nvim/after/plugin/nvimtree.lua
link .config/nvim/after/plugin/telescope.lua
link .config/nvim/after/plugin/treesitter.lua
link .config/nvim/after/plugin/undotree.lua

link .config/nvim/lua/core/init.lua
link .config/nvim/lua/core/packer.lua
link .config/nvim/lua/core/remap.lua
link .config/nvim/lua/core/set.lua

link .config/nvim/plugin/packer_compiled.lua

link .config/nvim/init.lua
