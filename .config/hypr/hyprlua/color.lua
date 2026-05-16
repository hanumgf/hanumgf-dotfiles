-- ##############
-- ### COLORS ###
-- ##############


local home = os.getenv("HOME")
local wal_colors_path = home .. "/.cache/wal/colors-luahyprland.lua"

local success = pcall(dofile, wal_colors_path)
local colors

if success and _G.wal then
    colors = _G.wal
else
    colors = {
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

return colors
