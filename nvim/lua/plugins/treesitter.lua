local ts = require('nvim-treesitter')
local S = require("settings")

ts.install(S.ts_parsers)

-- TODO figure out how to use this stuff from old config in a new one
-- highlight = { enable = true },
-- indent = { enable = true },
-- additional_vim_regex_highlighting = false,

local parsers = ts.get_installed('parsers')

vim.api.nvim_create_autocmd('FileType', {
    callback = function(args)
        local buf = args.buf
        local ft = vim.bo[buf].filetype
        local lang = vim.treesitter.language.get_lang(ft)
        -- vim.print("ft:", ft, "lang:", lang)
        if vim.tbl_contains(parsers, lang) then
            vim.treesitter.start(buf, lang)
        end
    end
})
