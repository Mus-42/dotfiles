hl.on("hyprland.start", function ()
    hl.exec_cmd("mako")
    hl.exec_cmd("thunar --daemon")
    hl.exec_cmd("waybar & hyprpaper")
    -- systemctl --user start hyprpolkitagent
    -- wl-paste --type text --watch cliphist store
    -- wl-paste --type image --watch cliphist store
end)
