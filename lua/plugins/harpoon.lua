return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup {
      settings = {
        save_on_toggle = true,
        save_on_change = true,
      },
    }
  end,
  keys = function()
    local harpoon = require 'harpoon'
    local keys = {
      {
        '<leader>a',
        function()
          harpoon:list():add()
        end,
        desc = 'Add current file to harpoon',
      },
      {
        '<leader>j',
        function()
          harpoon:list():select(1)
        end,
        desc = 'Open first harpoon entry',
      },
      {
        '<leader>k',
        function()
          harpoon:list():select(2)
        end,
        desc = 'Open second harpoon entry',
      },
      {
        '<leader>l',
        function()
          harpoon:list():select(3)
        end,
        desc = 'Open third harpoon entry',
      },
      {
        '<leader>;',
        function()
          harpoon:list():select(4)
        end,
        desc = 'Open fourth harpoon entry',
      },
      {
        '<leader>h',
        function()
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = 'Toggle Harpoon quick menu',
      },
    }
    return keys
  end,
}
