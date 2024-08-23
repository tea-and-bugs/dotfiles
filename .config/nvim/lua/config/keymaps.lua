M = {}

M.init = function()
  local map = vim.keymap.set
  vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

  -- Remap for dealing with word wrap
  vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
  vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

  vim.keymap.set('n', '<leader>/', ':Commentary<enter>')
  vim.keymap.set('v', '<leader>/', ':Commentary<enter>')

  vim.keymap.set('n', '<leader>cc', ':TermExec cmd="cht.sh --shell"<enter>')
end
return M

