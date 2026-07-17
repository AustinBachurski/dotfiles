local format_group = vim.api.nvim_create_augroup("ClangFormatOnSave", { clear = true })

vim.lsp.config("clangd", {
   cmd = {
      "/usr/sbin/clangd",
      "--clang-tidy",
      "--header-insertion=iwyu",
   },
})

vim.api.nvim_create_autocmd("BufWritePre", {
   pattern = { "*.cpp", "*.hpp", "*.cppm", "*.c", "*.h", },
   group = format_group,
   callback = function()
      vim.lsp.buf.format({ async = false })
      vim.cmd("normal! zH")
   end,
})
