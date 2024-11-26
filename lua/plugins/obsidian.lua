return {
  'epwalsh/obsidian.nvim',
  version = '*',
  lazy = true,
  -- ft = "markdown", -- Enable on all markdown
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  event = {
    -- All vaults should be here!
    'BufReadPre /home/haze/notes/myst/*.md',
    'BufNewFile /home/haze/notes/myst/*.md',
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  opts = {
    workspaces = {
      {
        name = 'myst',
        path = '/home/haze/notes/myst',
      },
      -- {
      --   name = "work",
      --   path = "~/vaults/work",
      -- },
    },
  },
}
