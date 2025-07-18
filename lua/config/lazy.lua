-- Load LazyVim
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { 'Failed to clone lazy.nvim:\n', 'ErrorMsg' },
      { out, 'WarningMsg' },
      { '\nPress any key to exit...' },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Include the './autocmds.lua'
require 'config.options'

require('lazy').setup {
  spec = {
    { import = 'plugins' },
  },
  defaults = {
    lazy = false, -- lazy load plugins by default
    version = false, -- alwayse use latest version of lazy
  },
  install = { colorscheme = { 'catppuccin/nvim' } },
  checker = {
    enabled = false, -- check for plugin updates periodically
    notify = false, -- notify on update
  }, -- automatically check for plugin updates
  performance = {
    rtp = {
      -- Disable the following built-in plugins to improve startup time.
      disabled_plugins = {
        'gzip',
        'tarPlugin',
        'tohtml',
        'tutor',
        'zipPlugin',
      },
    },
  },
}

-- TODO: Implement VeryLazy event
-- Keymaps should be loaded on the 'VeryLazy' event
-- This way we can modify keymaps after all plugins are loaded (lazily)
require 'config.keymaps'

-- Autocommands should be loaded on the 'VeryLazy' event
require 'config.autocmds'
