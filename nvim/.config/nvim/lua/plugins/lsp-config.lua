return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      --auto_install = true,
    },
    config = function()
      require("mason").setup({
          ensure_installed = { "lua_ls","gopls","clangd","pyright","jdtls","ts_ls","html","cssls","rust_analyzer"}
      })
      end
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      vim.lsp.config('gopls', {
        capabilities = capabilities,
      })
      vim.lsp.config('lua_ls', {
        capabilities = capabilities,
      })
      vim.lsp.config('clangd', {
        capabilities = capabilities,
      })
      vim.lsp.config('pyright', {
        capabilities = capabilities,
      })
      vim.lsp.config('jdtls', {
        capabilities = capabilities,
      })
      vim.lsp.config('ts_ls', {
        capabilities = capabilities,
      })
      vim.lsp.config('html', {
        capabilities = capabilities,
      })
      vim.lsp.config('cssls', {
        capabilities = capabilities,
      })
      vim.lsp.config('rust_analyzer', {
        capabilities = capabilities,
      })

      vim.lsp.enable({
        'gopls',
        'lua_ls',
        'clangd',
        'pyright',
        'jdtls',
        'ts_ls',
        'html',
        'cssls',
        'rust_analyzer',
      })

      vim.keymap.set('n','K', vim.lsp.buf.hover, {})
      vim.keymap.set('n','gd', vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set({'n','v'},'<leader>ca', vim.lsp.buf.code_action, {})
    end,
  },

}
