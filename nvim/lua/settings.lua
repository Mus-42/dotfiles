local S = {
    lsp_servers = {
        "zls",
        "clangd",
        "lua_ls",
        -- "rust_analyzer",
        -- "marksman",
        "cmake",
        -- "tinymist",
        "pylsp",
        -- etc
    },
    ts_parsers =  {
        "c", "lua", "python", "vim", "vimdoc", "rust", "zig", "cpp", "glsl", "cmake"
    },

    -- TODO options to enable/disable specific plugins, etc.?
};

-- TODO smarter way to override with "settings-local.lua" file (not tracked by git)
if vim.loop.fs_stat(vim.fn.stdpath("config") .. "/lua/settings-local.lua") then
    S = vim.tbl_deep_extend("force", S, require("settings-local"))
end

return S
