require('telescope').setup{
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },
    prompt_prefix = " ",
    selection_caret = " ",
    entry_prefix = "  ",
    borderchars = { '─', '│', '─', '│', '┼', '┼', '┼', '┼' },
    set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
  },
	extensions = {}
}

--Allow insert the search_dirs first
_G.open_telescope = function()
    Dir = vim.fn.input("Dir is: ", "~/")
    require("telescope.builtin").find_files({search_dirs = {Dir},hidden = true })
end

vim.api.nvim_set_keymap('n', '<leader>ff', ':lua open_telescope()<CR>', {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<leader>bb', ':buffer ', {noremap = true, silent = false})

--compile c++
_G.cpp= function()
 vim.cmd([[exec '!g++ -o a.out % && ./a.out ; rm a.out']])	
end
vim.api.nvim_set_keymap('n', '<leader>cpp', ':lua cpp()<cr>', {noremap = true, silent = true})
