require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		'lua_ls', 'pylsp', 'pyre',
		'ltex', 'texlab', 'clangd', 'pkgbuild_language_server'
	},
	automatic_installation = true,
})
