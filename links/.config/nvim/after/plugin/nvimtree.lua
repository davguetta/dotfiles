require "nvim-tree".setup {}

-- nvim-tree.lua mappings
vim.keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>r", ":NvimTreeRefresh<CR>")

local lib = require("nvim-tree.lib")

-- enables to stage files with <g-a> directly from the tree
local git_add = function()
  local node = lib.get_node_at_cursor()
  local gs = node.git_status.file

  -- If the file is untracked, unstaged or partially staged, we stage it
  if gs == "??" or gs == "MM" or gs == "AM" or gs == " M" then
    vim.cmd("silent !git add " .. node.absolute_path)

  -- If the file is staged, we unstage
  elseif gs == "M " or gs == "A " then
    vim.cmd("silent !git restore --staged " .. node.absolute_path)
  end

  lib.refresh_tree()
end

require("nvim-tree").setup {
  view = {
    mappings = {
      list = {
        { key = "ga", action = "git_add", action_cb = git_add },
      }
    },
  }
}
