return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    --"WhoIsSethDaniel/mason-tool-installer.nvim",
    'neovim/nvim-lspconfig',
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    --local mason_tool_installer = require("mason-tool-installer")

    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      ensure_installed = {
        "stylua",
        "selene",
        "luacheck",
        "shellcheck",
        "shfmt",
        "tailwindcss-language-server",
        "typescript-language-server",
        "tsserver",
        "html",
        "lua_ls",
        "pyright",
        "graphql",
        "solargraph",
      },
      automatic_installation = true,
    })

    --mason_tool_installer.setup({
    --ensure_installed = {
    --"prettierd",
    --"stylua",
    --"eslint_d",
    --"isort",
    --"black",
    --"eslint_d",
    --"rubocop",
    --"ruff",
    --},

    --automatic_installation = true,
    --})
  end,
}
