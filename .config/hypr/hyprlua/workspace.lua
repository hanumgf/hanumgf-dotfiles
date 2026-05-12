-- #################
-- ### WORKSPACE ###
-- #################

-- DP-1 (Main)
for i = 1, 5 do
    local is_default = (i == 1)
    hl.workspace_rule({ workspace = tostring(i), monitor = "DP-1", default = is_default })
end

-- HDMI-A-1 (Sub)
for i = 6, 8 do
    local is_default = (i == 6)
    hl.workspace_rule({ workspace = tostring(i), monitor = "HDMI-A-1", default = is_default })
end

