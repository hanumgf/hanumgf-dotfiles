-- ##################
-- ### APPEARANCE ###
-- ##################

-- https://wiki.hypr.land/Configuring/Basics/Variables/#general
-- https://wiki.hypr.land/Configuring/Basics/Variables/#decoration


local home = os.getenv("HOME")
-- Path to pywal generated colors for Hyprland
local wal_colors_path = home .. "/.cache/wal/colors-luahyprland.lua"

-- Safely load the color file without crashing if it is missing
local success = pcall(dofile, wal_colors_path)

-- Fallback color scheme if pywal colors fail to load
if not (success and _G.wal) then
    _G.wal = {
      background = "rgba(0c1518ee)",
      foreground = "rgba(e3e8edff)",
      color0     = "rgba(0c1518ff)",
      color1     = "rgba(3E67CEff)",
      color2     = "rgba(6697DCff)",
      color3     = "rgba(5AAAD7ff)",
      color4     = "rgba(B0A0AFff)",
      color5     = "rgba(96ABE0ff)",
      color6     = "rgba(A2DCF9ff)",
      color7     = "rgba(e3e8edff)",
      color8     = "rgba(9ea2a5ff)",
      color9     = "rgba(3E67CEff)",
      color10    = "rgba(6697DCff)",
      color11    = "rgba(5AAAD7ff)",
      color12    = "rgba(B0A0AFff)",
      color13    = "rgba(96ABE0ff)",
      color14    = "rgba(A2DCF9ff)",
      color15    = "rgba(e3e8edff)",
    }
end

local colors = _G.wal

hl.config({
    general = {
        -- Gaps and borders
        gaps_in = 5,
        gaps_out = 10,
        border_size = 2,

        ["col.active_border"] = colors.color2,
        ["col.inactive_border"] = colors.color7,

        -- Layout and basic behavior
        layout = "dwindle",
        allow_tearing = false,

        -- Mouse resize optimization
        resize_on_border = true,
        extend_border_grab_area = 15,
        hover_icon_on_border = true,

        -- Window snapping settings
        snap = {
            enabled = true,
            window_gap = 10,
            monitor_gap = 10,
            border_overlap = true,
            respect_gaps = false,
        },
    },

    decoration = {
        -- Window geometry and corners
        rounding = 6,
        rounding_power = 4.0,

        -- Window opacity
        active_opacity = 1.0,
        inactive_opacity = 1.0,
        fullscreen_opacity = 1.0,

        -- Dimming effects
        dim_modal = true,
        dim_inactive = false,

        -- Shadow configuration
        shadow = {
            enabled = true,
            range = 15,
            render_power = 3,
            color = colors.color0,
            offset = {0, 2},
            scale = 1.0,
        },

        -- Blur configuration
        blur = {
            enabled = true,
            size = 2,
            passes = 3,
            new_optimizations = true,
            xray = true,
            ignore_opacity = true,
            vibrancy = 0.1696,

            -- Target extensions for blur
            popups = true,
            popups_ignorealpha = 0.2,
        },
    },
})
