local o = vim.opt

-- leaderkey
vim.g.mapleader = " "

-- line relative numbering
o.nu = true
o.relativenumber = true

-- Smartcase search
o.ignorecase = true
o.smartcase = true

-- 2 spaces indent
o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.expandtab = true
o.smartindent = true

-- disable line wrap
o.wrap = false

-- not sure
o.swapfile = false

-- do not backup but keep history for undotree plugin
-- => check this is operational
o.backup = false
o.undodir = os.getenv("HOME") .. "/.vim/undodir"
o.undofile = true

-- highlight when searching
o.hlsearch = true
o.incsearch = true

o.termguicolors = true

-- not sure
o.scrolloff = 12
o.signcolumn = "yes"
o.isfname:append("@-@")
o.updatetime = 50

-- limit at column 80
o.colorcolumn = "80"

-- expose hidden characters
o.list = true
o.listchars = {
  eol = "↲",
  extends = "→",
  nbsp = "⎵",
  tab = "»·",
  trail = "␠",
  precedes = "←"
}

-- allows to split window to the right and make them equal size
o.splitright = true
o.equalalways = true

-- not sure
o.completeopt = "menu,noselect"
o.encoding = "UTF-8"
o.laststatus = 2
o.pumheight = 10
