vim.keymap.set('n', '<leader>w', '<cmd>w<cr>', { desc = '[W]rite file' })

vim.api.nvim_create_autocmd("FileType", { pattern = "go", callback = function()
  -- Run go test on the current package
  vim.keymap.set("n", "<leader>gt", "<cmd>w<CR><cmd>!go test ./...<CR>", { desc = "Run Go tests" })

  -- Run go run on the current file
  vim.keymap.set("n", "<leader>gr", "<cmd>w<CR><cmd>!go run %<CR>", { desc = "Run current Go file" })

  -- Format current file using gofmt / built-in LSP
  vim.keymap.set("n", "<leader>gf", function()
    vim.lsp.buf.format()
  end, { desc = "Format Go file" })
end })