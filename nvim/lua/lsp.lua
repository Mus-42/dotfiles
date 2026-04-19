local S = require("settings")

vim.lsp.enable(S.lsp_servers)

vim.lsp.config("pylsp", {
    settings = { pylsp = { plugins = {
        pycodestyle = {
            ignore = {'W391', 'E302', "E305", "E501"},
            maxLineLength = 100,
        }
    }}}
});

-- TODO rework that
vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('my.lsp', {}),
    callback = function(args)
        local client = assert(vim.lsp.get_client_by_id(args.data.client_id))

        if client:supports_method('textDocument/completion') then
            local chars = {};
            table.insert(chars, '.')
            table.insert(chars, '_')
            for i = 48, 57 do table.insert(chars, string.char(i)) end
            for i = 65, 90 do table.insert(chars, string.char(i)) end
            for i = 97, 122 do table.insert(chars, string.char(i)) end
            client.server_capabilities.completionProvider.triggerCharacters = chars

            vim.lsp.completion.enable(true, client.id, args.buf, {
                autotrigger = true,
                convert = function(item)
                    return { abbr = item.label:gsub('%b()', '') }
                end,
            })
        end
    end,
})

vim.keymap.set({'n'}, "gd", function() vim.lsp.buf.definition() end)
vim.keymap.set({'n', 'v'}, "qf", function() vim.lsp.buf.format({async=true}) end)
vim.keymap.set({'n'}, "K", function() vim.lsp.buf.hover() end)
vim.keymap.set({'n'}, "gl", function() vim.diagnostic.open_float() end)
