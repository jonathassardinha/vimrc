local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
	'tsserver',
	'eslint',
	'sumneko_lua',
	'rust_analyzer'
})

--require('cmp').setup {
--	sources = {
--		{ name = 'nvim-lua' }
--	}
--}
-- local cmp_select = { behavior = cmp.SelectBehavior.Select }

--lsp.set_preferences({
--	sign_icons = { }
--})

lsp.configure('sumneko_lua', {
	settings = {
		Lua = {
			diagnostics = {
				globals = { 'vim' }
			}
		}
	}
})

lsp.setup()
