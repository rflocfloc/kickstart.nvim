return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  event = 'VimEnter',
  dependencies = {
    'nvim-lua/plenary.nvim',
    opts = {
      menu = {
        width = vim.api.nvim_win_get_width(0) - 4,
      },
      settings = {
        save_on_toggle = true,
      },
    },

    config = function()
      local harpoon = require 'harpoon'

      -- REQUIRED
      harpoon:setup()
      -- REQUIRED
      --
      vim.keymap.set('n', '<leader>aa', function()
        harpoon:list():add()
      end, { desc = 'H[a]rpoon [A]dd File' })
      vim.keymap.set('n', '<leader>at', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end, { desc = 'H[a]rpoon [T]oggle Window' })

      -- Navigation
      vim.keymap.set('n', '<C-j>', function()
        harpoon:list():select(1)
      end)
      vim.keymap.set('n', '<C-k>', function()
        harpoon:list():select(2)
      end)
      vim.keymap.set('n', '<C-l>', function()
        harpoon:list():select(3)
      end)
      vim.keymap.set('n', '<C-;>', function()
        harpoon:list():select(4)
      end)

      -- Toggle previous & next buffers stored within Harpoon list
      vim.keymap.set('n', '<leader>ap', function()
        harpoon:list():prev()
      end, { desc = 'H[a]rpoon [P]revious Buffer' })
      vim.keymap.set('n', '<leader>an', function()
        harpoon:list():next()
      end, { desc = 'H[a]rpoon [N]ext Buffer' })
    end,
  },
}
