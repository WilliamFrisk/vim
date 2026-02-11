return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      -- state holder
      local pycodestyle_enabled = true

      vim.api.nvim_create_user_command("PycodestyleToggle", function()
        pycodestyle_enabled = not pycodestyle_enabled

        vim.lsp.buf_notify(0, "workspace/didChangeConfiguration", {
          settings = {
            pylsp = {
              plugins = {
                pycodestyle = {
                  enabled = pycodestyle_enabled,
                },
              },
            },
          },
        })

        -- clear old diagnostics in current buffer
        vim.diagnostic.reset(nil, 0)

        print("pycodestyle: " .. (pycodestyle_enabled and "ON" or "OFF"))
      end, {})
    end,
  },
}
