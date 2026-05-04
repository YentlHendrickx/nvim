return {
  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
	branch = 'main',
    main = 'nvim-treesitter.configs', -- Sets main module to use for opts
    opts = {
      -- Autoinstall languages that are not installed
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = { 'ruby' },
      },
      indent = { enable = true, disable = { 'ruby' } },
    },
    config = function(_, opts)
      vim.filetype.add {
        pattern = {
          ['.*%.blade%.php'] = 'blade',
        },
      }

      require('nvim-treesitter').install(opts)
    end,
  },
  { -- Always keep context at top
    'nvim-treesitter/nvim-treesitter-context',
    config = function()
      require('treesitter-context').setup { enable = true }
    end,
  },
}
