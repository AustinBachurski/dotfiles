local bind = vim.keymap.set

-- [ Leader Key ]
--
vim.g.mapleader = " "


-- [ Keymaps ]
--
vim.keymap.set("n", "<leader>ft", vim.cmd.Ex)           -- Open netrw.

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gvzz")          -- Move selected lines up.
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gvzz")          -- Move selected lines down.
vim.keymap.set("v", "<", "<gv")                         -- Move selected content left.
vim.keymap.set("v", ">", ">gv")                         -- Move selected content right.
vim.keymap.set("n", "<C-y>", "gg\"+yG")                 -- Yank the entire buffer into the system clipboard.
vim.keymap.set("v", "<leader>d", "\"_d")                -- Delete highlighted text without yanking.
vim.keymap.set("v", "<leader>p", "\"_dP")               -- Paste over highlighted text without yanking.
vim.keymap.set("n", "n", "nzz")                         -- Go to next search entry and center screen on said entry.
vim.keymap.set("n", "N", "Nzz")                         -- Go to previous search entry and center screen on said entry.
vim.keymap.set("n", "<C-d>", "<C-d>zz")                -- Jump down and center screen.
vim.keymap.set("n", "<C-u>", "<C-u>zz")                -- Jump up and center screen.
vim.keymap.set("n", "<leader>/", vim.cmd.nohl)          -- Clear highlight from searching.

