M = {}

M.init = function()
  local map = vim.keymap.set
  map("n", "<leader>p", '"*p', { silent = true, desc = "Paste from mouse" })
  map("n", "<leader>P", '"*P', { silent = true, desc = "Paste before from mouse" })
end

M.comment = {
  {
    "<leader>/",
    function()
		vim.cmd(":Commentary")
    end,
    silent = true,
    desc = "Comment line",
  },
}

return M

