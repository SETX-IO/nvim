require "config.lsp.key"
local lspconfig = require "lspconfig";
local mason = require "mason-lspconfig"

mason.setup_handlers {
	function(server_name)
		lspconfig[server_name].setup {};
	end,

	["lua_ls"] = function()
		lspconfig.lua_ls.setup {
			settings = {
				Lua = {
					diagnostics = { globals = { 'vim' } },
					telemetry = { enable = false, }
				}
			}
		}
	end,
	lspconfig.clangd.setup {
		cmd = {
			"clangd",
			"--background-index",
			"--clang-tidy",
			"--clang-tidy-checks=bugprone-*, clang-analyzer-*, google-*, modernize-*, performance-*, portability-*, readability-*, -bugprone-too-small-loop-variable, -clang-analyzer-cplusplus.NewDelete, -clang-analyzer-cplusplus.NewDeleteLeaks, -modernize-use-nodiscard, -modernize-avoid-c-arrays, -readability-magic-numbers, -bugprone-branch-clone, -bugprone-signed-char-misuse, -bugprone-unhandled-self-assignment, -clang-diagnostic-implicit-int-float-conversion, -modernize-use-auto, -modernize-use-trailing-return-type, -readability-convert-member-functions-to-static, -readability-make-member-function-const, -readability-qualified-auto, -readability-redundant-access-specifiers,",
			"--completion-style=detailed",
			"--cross-file-rename=true",
			"--header-insertion=iwyu",
			"--pch-storage=memory",
			"--function-arg-placeholders=false",
			"--log=verbose",
			"--ranking-model=decision_forest",
			"--header-insertion-decorators",
			"-j=12",
			"--pretty"
		}
	}
}

-- 设置报错信息图标
vim.diagnostic.config({
	virtual_text = {
		prefix = '●', -- Could be '●', '▎', 'x'
	}
})

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.api.nvim_exec(
	[[
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]],
	false
)
