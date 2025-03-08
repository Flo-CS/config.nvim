return {
  {
    'folke/which-key.nvim',
    event = 'VimEnter',
    opts = {
      delay = 0,
      icons = {
        mappings = vim.g.have_nerd_font and {},
        keys = vim.g.have_nerd_font and {},
      },
      spec = {
        { '<leader>c', group = '[C]ode' },
        { '<leader>g', group = '[G]it' },
        { '<leader>d', group = '[D]iagnostics' },
        { '<leader>s', group = '[S]earch' },
        { '<leader>t', group = '[T]oggle' },
      },
    },
  },
}
