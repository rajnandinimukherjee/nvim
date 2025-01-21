vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = false

require("nvim-tree").setup({
  sort_by = "extension",
  actions = {
    open_file = { quit_on_open = true }
  },
  update_focused_file = {
    enable = true,
    update_cwd = true
  },
  filters = {
    dotfiles = true,
    git_clean = false,
    custom = { '^.git$', '^node_modules$', '^.aux$' }
  },
  git = {
    enable = true
  },
  log = {
    enable = true,
    types = { diagnostics = true }
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    debounce_delay = 50,
    icons = {
      hint = 'H',
      info = 'I',
      warning = 'W',
      error = 'E'
    }
  }
})

vim.keymap.set('n', '<c-e>', '<cmd>NvimTreeToggle<cr>')
