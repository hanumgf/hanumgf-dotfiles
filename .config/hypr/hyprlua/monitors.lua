-- ################
-- ### MONITORS ###
-- ################

-- See https://wiki.hypr.land/Configuring/Monitors/

hl.monitor({
    output   = "DP-1",
    mode     = "2560x1440@180.00",
    position = "0x0",
    scale    = "1",
})

hl.monitor({
    output   = "HDMI-A-1",
    mode     = "1920x1080@120.00",
    position = "auto-right",
    scale    = "1",
})
