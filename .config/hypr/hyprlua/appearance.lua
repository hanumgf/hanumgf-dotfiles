-- ##################
-- ### APPEARANCE ###
-- ##################

local home = os.getenv("HOME")
local wal_colors_path = home .. "/.cache/wal/colors-luahyprland.lua"

local success = pcall(dofile, wal_colors_path)

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
        gaps_in = 5,
        gaps_out = 10,
        border_size = 2,

        col = {
            -- $color2などの変数は事前に定義してある想定
            active_border = colors.color2,
            -- inactive_border = colors.color7,
        },

        -- マウスでのリサイズを有効化
        resize_on_border = true,
        -- テアリング設定
        allow_tearing = false,
        layout = "dwindle",

        -- スナップ機能の設定（サブカテゴリ）
        snap = {
            enabled = false,
            window_gap = 10,
            monitor_gap = 10,
            border_overlap = false,
            respect_gaps = false,
        },
    },

    decoration = {
        rounding = 6,
        rounding_power = 4.0,

        active_opacity = 1.0,
        inactive_opacity = 1.0,

        -- Shadow サブカテゴリ
        shadow = {
            enabled = true,
            range = 15,
            render_power = 3,
            color = colors.color0, -- 変数定義済みを想定
        },

        -- Blur サブカテゴリ
        blur = {
            enabled = true,
            size = 2,
            passes = 3,
            popups = true,
            new_optimizations = true,
            xray = false,
            vibrancy = 0.1696,
            ignore_opacity = true,
        },
    },
})

