-- Obsidian, useful for jumping between notes and creating links automatically
return {
  'epwalsh/obsidian.nvim',
  version = '*',
  lazy = true,
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
    },
  },
}
