return {
  'Exafunction/codeium.vim',
  config = function()
    vim.keymap.set('i', '<c-k>', function()
      return vim.fn['codeium#CycleCompletions'](1)
    end, { expr = true, silent = true })
    vim.keymap.set('i', '<c-j>', function()
      return vim.fn['codeium#CycleCompletions'](-1)
    end, { expr = true, silent = true })
  end,
}
