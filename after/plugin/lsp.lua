local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
	'tsserver',
	'eslint',
	'sumneko_lua',
	'rust_analyzer'
})

lsp.configure('sumneko_lua', {
	settings = {
		Lua = {
			diagnostics = {
				globals = { 'vim' }
			}
		}
	}
})

lsp.configure('tsserver', {
    settings = {
        completions = {
            completeFunctionCalls = true
        },
        typescript = {
            inlayHints = {
                includeInlayFunctionParameterTypeHints = true
            }
        }
    }
})

vim.keymap.set("n", "<leader>fa", vim.cmd.EslintFixAll)
vim.keymap.set("n", "gc", vim.cmd.cclose)

lsp.setup()
