-- local fn = vim.fn
-- local api = vim.api

-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

vim.g.vimsyn_embed = 'l'
vim.g.autoformat = false
vim.opt.nu = true
vim.opt.relativenumber = true

-- You have to turn this one on :)
vim.opt.inccommand = "split"

-- Best search settings :)
vim.opt.smartcase = true
vim.opt.ignorecase = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.config/vim/undodir"
vim.opt.undofile = true

-- prevent jumping when opening an edgebar.
vim.opt.splitkeep = "screen"

vim.g.lazyvim_picker = "fzf"

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.g.python3_host_prog = os.getenv("HOME") .. "/.config/pyenv/versions/3.12.3/bin/python"
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.did_install_default_menus = 1

vim.opt.listchars:append({ extends = "…" })
vim.opt.listchars:append({ nbsp = "+" })
vim.opt.listchars:append({ precedes = "…" })
vim.opt.listchars:append({ tab = "·»" })
vim.opt.listchars:append({ trail = "·" })
