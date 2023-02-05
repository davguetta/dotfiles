-- Make split navigation less painful
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

---------------------------------------------------------------
-- key bindings section coming from ThePrimeagen             --
-- https://www.youtube.com/watch?v=w7i4amO_zaE               --
---------------------------------------------------------------

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- deja dans les keybindings par defaut de undotree
-- vim.keymap.set("<leader>u", ":UndotreeShow<CR>")

-- easily move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- regulat J without cursor moving
vim.keymap.set("n", "J", "mzJ`z")

-- keeping cursor centered when moving or searching around
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- pasting and deleting into the void register
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("n", "<leader>d", "\"_d")

-- yank to clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- paste from keyboard but key bindings already used
-- vim.keymap.set("n", "<leader>p", "\"+p")

-- pour sortir d'une insertion en mode vertical avec <C-c> comme esc
vim.keymap.set("i", "<C-c>", "<Esc>")

-- switch to (closed ?) projects configuration with tmux
vim.keymap.set("n", "<C-f>", "<cms>silent !tmux neww tmux-sessionizer<CR>")

-- not commented in the video. Check purpose
vim.keymap.set("n", "<leader>f", function()
  vim.lsp.buf.format()
end)

-- starts an all file search & replace on the word the cursor was on
vim.keymap.set(
  'n',
  '<leader>s',
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]
)

-- make the file executable directly from the editor
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- when using quickfix features
-- vim.keymap.set('n', '<C-k>', '<cmd>cnext<CR>zz')
-- vim.keymap.set('n', '<C-j>', '<cmd>cprev<CR>zz')
-- vim.keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz')
-- vim.keymap.set('n', '<leader>j', '<cmd>lprev<CR>zz')

---------------------------------------------------------------
-- end of ThePrimeagen section                               --
---------------------------------------------------------------

-- https://stackoverflow.com/questions/460496/whats-the-most-elegant-way-of-commenting-uncommenting-blocks-of-ruby-code-in/463744#463744
-- la sequence fonctionne "à la main" mais il faut escape encore avec double \\ en lua (cf. https://www.lua.org/manual/5.1/manual.html#2.1)
-- noremap   <buffer> K      :s,^\(\s*\)[^# \t]\@=,\1#,e<CR>:nohls<CR>zvj
-- noremap   <buffer> <C-K>  :s,^\(\s*\)#\s\@!,\1,e<CR>:nohls<CR>zvj
-- next step : make it toggle
-- , : pourrait être remplacé par /
-- \t : horizontal tab
-- @= : see :help @=
-- e : silence pattern errors cf.
-- zv : related to folds cf. https://neovim.io/doc/user/usr_28.html#usr_28.txt
vim.keymap.set("", "K", ":s,^\\(\\s*\\)[^# \\t]\\@=,# ,e<CR>:nohls<CR>zvj")
vim.keymap.set("", "L", ":s,^# ,,e<CR>:nohls<CR>zvj")
