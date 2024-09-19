require("congvan")

-- Set long listing style with human-readable sizes and sorting by modification time
vim.g.netrw_liststyle = 1
vim.g.netrw_sort_sequence = '[\\/],\\d\\+[^0-9],\\d\\+,\\.\\d\\+,\\d'
vim.g.netrw_timefmt = '%Y-%m-%d %H:%M'

-- Disable mouse in terminal buffers
vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "*",
  callback = function()
    vim.opt_local.mouse = ""
  end,
})

-- Automatically enter terminal mode when switching to a terminal buffer
vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "term://*",
    callback = function()
        vim.cmd("startinsert")
    end,
})

