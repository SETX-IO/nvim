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
          diagnostics = { globals = {'vim'} },
          telemetry = { enable = false, }
        }
      }
    }
  end
}
