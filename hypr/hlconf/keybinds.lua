local mod = "SUPER"
local keyboard = "semico-usb-keyboard"
local home = os.getenv("HOME")

local terminal = "foot"
local file_manager = "thunar"
local menu = "fuzzel"
local lock = "hyprlock"
local emoji_picker = home .. "/.local/bin/fuzzel-emoji"
local take_screenshot = "slurp | grim -g - - | wl-copy --type image/png"

hl.bind(mod .. " + Return", hl.dsp.exec_cmd(terminal))
hl.bind(mod .. " + SHIFT + E", hl.dsp.exec_cmd(emoji_picker))
hl.bind(mod .. " + E", hl.dsp.exec_cmd(file_manager))
hl.bind(mod .. " + D", hl.dsp.exec_cmd(menu))
hl.bind(mod .. " + L", hl.dsp.exec_cmd(lock))
hl.bind(mod .. " + SHIFT + S", hl.dsp.exec_cmd(take_screenshot))
hl.bind(mod .. " + M", hl.dsp.exit())

-- bind = $mod, P, pseudo, # dwindle
-- # bind = $mod, J, togglesplit, # dwindle

hl.bind(mod .. " + SHIFT + Q", hl.dsp.window.close())
hl.bind(mod .. " + F", hl.dsp.window.fullscreen({ action = "toggle" }))

hl.bind(mod .. " + SHIFT + Space", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mod .. " + Space",  hl.dsp.focus({ window = "floating" }))

hl.bind(mod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mod .. " + down",  hl.dsp.focus({ direction = "down" }))

hl.bind(mod .. " + SHIFT + left",  hl.dsp.window.move({ direction = "left" }))
hl.bind(mod .. " + SHIFT + right", hl.dsp.window.move({ direction = "right" }))
hl.bind(mod .. " + SHIFT + up",    hl.dsp.window.move({ direction = "up" }))
hl.bind(mod .. " + SHIFT + down",  hl.dsp.window.move({ direction = "down" }))

for i = 1, 10 do
    local key = i % 10
    hl.bind(mod .. " + " .. key, hl.dsp.focus({ workspace = i }))
    hl.bind(mod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

hl.bind(mod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- lang
hl.bind(mod .. " + SHIFT + Z", hl.dsp.exec_cmd("hyprctl switchxkblayout " .. keyboard .. " 0"), { locked = true })
hl.bind(mod .. " + SHIFT + X", hl.dsp.exec_cmd("hyprctl switchxkblayout " .. keyboard .. " 1"), { locked = true })
hl.bind(mod .. " + SHIFT + A", hl.dsp.exec_cmd("hyprctl switchxkblayout " .. keyboard .. " 2"), { locked = true })

-- mpd
hl.bind(mod .. " + T", hl.dsp.exec_cmd("mpc toggle"), { locked = true })

-- primary paste
hl.bind(mod .. " + mouse:274", hl.dsp.exec_cmd("wl-copy -pc"), { non_consuming = true })
