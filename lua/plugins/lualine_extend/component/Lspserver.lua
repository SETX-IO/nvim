Lspserver = {
	function()
		local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype');
		local clients = vim.lsp.get_active_clients();
		if next(clients) == nil then
			return nil
		end

		for _, client in ipairs(clients) do
			local filetypes = client.config.filetypes
			if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
				return client.name
			end
		end
		return nil
	end,
	icon = "",
	color = { fg = '#ffffff', gui = 'bold' }
}
