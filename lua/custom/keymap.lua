vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>w", ":w<CR>", { noremap = true, silent = true, desc = "Write the File" })

vim.keymap.set("n", "<leader>wq", ":wq<CR>", { noremap = true, silent = true, desc = "Write the File & Quit" })

vim.keymap.set("n", "<leader>q", ":q<CR>", { noremap = true, silent = true, desc = "Quit" })

-- Key mapping for copying the current line with Shift+Alt+j
vim.keymap.set("n", "<S-A-j>", "yyp", { noremap = true, silent = true })
vim.keymap.set("i", "<S-A-j>", "<Esc>yypi", { noremap = true, silent = true })
vim.keymap.set("v", "<S-A-j>", "y`<Pgv", { noremap = true, silent = true })

-- Key mapping for copying the current line upward with Shift+Alt+k
vim.keymap.set("n", "<S-A-k>", "yyP", { noremap = true, silent = true })
vim.keymap.set("i", "<S-A-k>", "<Esc>yyPi", { noremap = true, silent = true })
vim.keymap.set("v", "<S-A-k>", "y`>pgv", { noremap = true, silent = true })

-- Move line up in insert mode
vim.keymap.set("i", "<A-k>", "<Esc>:m .-2<CR>==gi", { noremap = true, silent = true })

-- Move line down in insert mode
vim.keymap.set("i", "<A-j>", "<Esc>:m .+1<CR>==gi", { noremap = true, silent = true })

-- Move line up in normal mode
vim.api.nvim_set_keymap("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true })

-- Move line down in normal mode
vim.api.nvim_set_keymap("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true })

-- Move selected block of text down
vim.api.nvim_set_keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
-- Move selected block of text up
vim.api.nvim_set_keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- Navigate to specific tabs using Alt + 1 to Alt + 9
for i = 1, 9 do
	vim.keymap.set("n", "<A-" .. i .. ">", i .. "gt", { desc = "Go to tab " .. i })
end

vim.keymap.set("x", "<leader>p", '"_dP', { desc = "Paste without losing the yank" })
