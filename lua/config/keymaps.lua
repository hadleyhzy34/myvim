-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

local keymap = vim.keymap -- for conciseness

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tt", ":tabnext<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tj", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tk", ":tabp<CR>") --  go to previous tab

-- window management
keymap.set("n", "<leader>sh", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sv", "<C-w>s") -- split window horizontally

-- resize screen size
keymap.set("n", "<leader>-", "<C-w>-") -- decrease window size vertically
keymap.set("n", "<leader>=", "<C-w>+") -- increase window size vertically
keymap.set("n", "<leader>[", "<C-w><") -- decrease window size horizontally
keymap.set("n", "<leader>]", "<C-w>>") -- increase window size horizontally
