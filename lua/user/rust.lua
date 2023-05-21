local M = {
  "simrat39/rust-tools.nvim",
  event = "BufReadPre",
}

M.opts = {
}

M.on_attach = function(_, bufnr)
  -- Hover actions
  vim.keymap.set("n", "<C-space>", M.hover_actions.hover_actions, { buffer = bufnr })
  -- Code action groups
  vim.keymap.set("n", "<Leader>a", M.code_action_group.code_action_group, { buffer = bufnr })
end

return M
