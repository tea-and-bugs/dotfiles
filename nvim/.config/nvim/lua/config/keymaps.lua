M = {}

M.replacer = {
  {
    "<leader>rq",
    function()
      require("replacer").run()
    end,
    silent = true,
    desc = "Make quickfix editable for replacing in",
  },
}

-- And other plugin keymaps like this
M.trouble = {
  ...
}

return M

