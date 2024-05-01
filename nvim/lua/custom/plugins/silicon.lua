return {
  'michaelrommel/nvim-silicon',
  lazy = true,
  cmd = 'Silicon',
  init = function()
    local wk = require 'which-key'
    wk.register({
      ['<leader>sc'] = { ':Silicon<CR>', 'Snapshot Code' },
    }, { mode = 'v' })
  end,
  config = function()
    require('silicon').setup {
      -- Configuration here, or leave empty to use defaults
      font = 'JetBrainsMono Nerd Font=34;Noto Color Emoji=34',
      -- ver documentacion de silicon para los valores soportados y nvim-silicon
      theme = 'Dracula',
      background = '#94e2d5',
      window_title = function()
        return vim.fn.fnamemodify(vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()), ':t')
      end,
    }
  end,
}
