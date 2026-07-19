hl.config({
    general = {
        gaps_in  = 0,
        gaps_out = 2,

        border_size = 2,

        col = {
            active_border   = { colors = {"rgba(33ccffee)", "rgba(00ff99ee)"}, angle = 45 },
            inactive_border = "rgba(595959aa)",
        },

        -- Set to true to enable resizing windows by clicking and dragging on borders and gaps
        resize_on_border = false,

        -- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on
        allow_tearing = false,

        layout = "dwindle",
    },

    decoration = {
        rounding = 0,

        active_opacity   = 1.0,
        inactive_opacity = 1.0,

        shadow = {
            enabled = false,
        },

        blur = {
            enabled = false,
        },
    },

    animations = {
        enabled = false,
    },

    ecosystem = {
        no_update_news = true,
        no_donation_nag = true,
    }
})



hl.config({
    dwindle = {
        preserve_split = true, -- You probably want this
        -- no_gaps_when_only = 1
    },
})

hl.config({
    misc = {
        force_default_wallpaper = -1, -- 0
        disable_hyprland_logo   = false,
    },
})

-- cursor {
--     no_hardware_cursors = true
-- }

hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = "auto",
})
