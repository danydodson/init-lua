
vim.g.vimsyn_embed = 'l'
vim.g.autoformat = false
vim.g.did_install_default_menus = 1

vim.opt.updatetime = 300

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.wrap = false
vim.opt.smartindent = true

vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.config/vim/undodir"

vim.opt.smartcase = true
vim.opt.ignorecase = true

-- search options
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.splitkeep = "screen"

vim.opt.scrolloff = 8
vim.opt.signcolumn = "number"
-- vim.opt.signcolumn = "yes"

vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.python3_host_prog = os.getenv("HOME") .. "/.config/pyenv/versions/3.10.0/bin/python3"

vim.opt.isfname:append("@-@")

vim.opt.listchars:append({ extends = "…" })
vim.opt.listchars:append({ nbsp = "+" })
vim.opt.listchars:append({ precedes = "…" })
vim.opt.listchars:append({ tab = "·»" })
vim.opt.listchars:append({ trail = "·" })
