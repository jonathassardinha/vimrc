-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup({
    view = {
        mappings = {
            list = {
                { key = '<C-e>', action = '' }
            }
        }
    }
})

vim.keymap.set('n', '<C-e>', vim.cmd.NvimTreeFindFileToggle)
vim.keymap.set('n', '<C-b>', vim.cmd.NvimTreeFocus)
