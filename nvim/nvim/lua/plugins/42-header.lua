-- ************************************************************************** --
--                                                                            --
--                                                        :::      ::::::::   --
--   42-header.lua                                      :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: iubieta- <iubieta@student.42.fr>           +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2025/01/01 23:31:04 by iubieta-          #+#    #+#             --
--   Updated: 2025/01/01 23:32:06 by iubieta-         ###   ########.fr       --
--                                                                            --
-- ************************************************************************** --

return {
	"Diogo-ss/42-header.nvim",
	cmd = { "Stdheader" },
	keys = { "<F1>" },
	opts = {
		default_map = true, -- Default mapping <F1> in normal mode.
		auto_update = true, -- Update header when saving.
		user = "iubieta-", -- Your user.
		mail = "iubieta@student.42.fr", -- Your mail.
		-- add other options.
	},
	config = function(_, opts)
		require("42header").setup(opts)
	end,
}
