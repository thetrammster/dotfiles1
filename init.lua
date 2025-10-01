-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- Disable all auto-format on save
-- Block ALL formatting on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    -- Override any formatting callback
    vim.schedule(function() end)
  end,
})
