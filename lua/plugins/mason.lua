-- https://github.com/williamboman/mason.nvim

return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "bash-language-server",
        "css-lsp",
        "codelldb",
        "emmet-ls",
        "eslint-lsp",
        "flake8",
        "html-lsp",
        "json-lsp",
        "lua-language-server",
        "markdownlint",
        "marksman",
        "prettier",
        "rust-analyzer",
        "shellcheck",
        "shfmt",
        "stylua",
        "tailwindcss-language-server",
        "taplo",
        "typescript-language-server",
        "vim-language-server",
        "vue-language-server",
        "yaml-language-server",
      },
    },
  },
}
