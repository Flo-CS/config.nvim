-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  {
    'nvim-neo-tree/neo-tree.nvim',
    version = '*',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
      'MunifTanjim/nui.nvim',
    },
    cmd = 'Neotree',
    keys = {
      { '<leader>e', ':Neotree reveal<CR>', desc = '[e]xplorer', silent = true },
    },
    opts = {
      filesystem = {
        hijack_netrw_behavior = 'open_current',
        window = {
          position = 'left',
        },
      },
      window = {
        mappings = {
          ['<esc>'] = 'close_window',
          ['<C-c>'] = 'close_window',
        },
      },
    },
  },
}
