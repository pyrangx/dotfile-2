local cmp = require'cmp'
cmp.register_source('path', require('lsp.pat').new())
  cmp.setup({
    mapping = {
	  ['<S-Tab>'] = cmp.mapping.select_prev_item(),
      ['<Tab>'] = cmp.mapping.select_next_item(),
	  ['<CR>'] = cmp.mapping.confirm({
       behavior = cmp.ConfirmBehavior.Replace,
       select = true,
     })
    },
    snippet = {
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body)
      end,
    },
    sources = {
	  { name = 'path' },
      { name = 'nvim_lsp' },
    },
    documentation = {
      border = { '┼', '─', '┼', '│', '┼', '─', '┼', '│' },
      winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder",
    },
	--menu width
	formatting = {
        format = function(entry, vim_item)
        vim_item.abbr = string.sub(vim_item.abbr, 1, 20)
        return vim_item
     end
}
  })

--Completion colors
vim.cmd([[highlight! link cmpDocumentation gray ]])
vim.cmd([[highlight Pmenu guibg=#011627 ]])


--<C-j>, <C-k> mapping
_G.Next = function(str)
    str = "<C-n>"
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end
_G.previous = function(str)
    str = "<C-p>"
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end
vim.api.nvim_set_keymap("i", "<C-j>", "v:lua.Next()", {expr = true})
vim.api.nvim_set_keymap("i", "<C-k>", "v:lua.previous()", {expr = true})
