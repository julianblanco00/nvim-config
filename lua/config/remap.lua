vim.g.mapleader = " "

local defaults = { noremap = true, silent = true }

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "<C-n>", 'y/<C-r>"<CR>Ncgn', defaults)

vim.keymap.set({ "n", "v" }, "<leader>dd", '"_dd<Esc>', defaults)
vim.keymap.set({ "n", "v" }, "<leader>dw", '"_dw<Esc>', defaults)
vim.keymap.set({ "n", "v" }, "<leader>p", '"_dP<Esc>', defaults)

vim.keymap.set("n", "{", "<C-d>", defaults)
vim.keymap.set("n", "}", "<C-u>", defaults)

vim.keymap.set("n", "<C-e>", "10<C-e>", defaults)
vim.keymap.set("n", "<C-y>", "10<C-y>", defaults)

vim.keymap.set("n", "0", "^", defaults)

vim.keymap.set("n", "yp", "<S-v>$%y", defaults)

vim.keymap.set("n", "<leader>e", "<cmd>:Neotree toggle reveal<CR>")

vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)

vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set("n", "<C-h>", "<C-w><Left>", defaults)
vim.keymap.set("n", "<C-l>", "<C-w><Right>", defaults)

-- floating terminal
vim.keymap.set("n", "<C-/>", function()
	Snacks.terminal()
end, { desc = "Terminal (cwd)" })

-- Terminal Mappings
vim.keymap.set("t", "<C-/>", "<cmd>close<cr>", { desc = "Hide Terminal" })
