M = {}

M.init = function()
	-- local map = vim.keymap.set
	vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

	-- Remap for dealing with word wrap
	-- vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
	-- vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

	vim.keymap.set("n", "<leader>/", ":Commentary<enter>", { desc = "Comment Line" })
	vim.keymap.set("v", "<leader>/", ":Commentary<enter>", { desc = "Comment Line" })

	vim.keymap.set("n", "<leader>cc", ':TermExec cmd="cht.sh --shell"<enter>', { desc = "Cheat Sheet" })
	vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<enter>", { desc = "File Tree" })

	vim.keymap.set("n", "<leader>ff", ":Telescope find_files<enter>", { desc = "Find Files" })
	vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<enter>", { desc = "Find (Live Grep)" })

	vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
	vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "Run Formatter" })

	-- COMPLETION KEYMAPS IN plugins/completions.lua
end
return M
