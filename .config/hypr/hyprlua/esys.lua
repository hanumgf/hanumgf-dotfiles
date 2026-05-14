-- ##############################
-- ### ECOSYSTEM / PERMISSION ###
-- ##############################

-- https://wiki.hypr.land/Configuring/Basics/Variables/#ecosystem
-- https://wiki.hypr.land/Configuring/Advanced-and-Cool/Permissions/


hl.config({
    ecosystem = {
        no_update_news      = false,
        no_donation_nag     = true,
        enforce_permissions = true, -- Strictly enforce permission restrictions
    },
})

-- ==================
--  PERMISSION RULES
-- ==================


-- 1. Fallback Rules for Broad System Paths
--
-- Always ask if an unknown binary in system paths attempts a screen capture
hl.permission({ binary = "/usr/(bin|lib|lib32|lib64|local/bin)/.*", type = "screencopy", mode = "ask" })

-- 2. Trusted Core Components
--
-- Legitimate tools for screen capture and recording
hl.permission({ binary = "/usr/bin/(grim|slurp|ffmpeg|pipewire|pipewire-pulse|wireplumber|wl-screenrec|wf-recorder|hyprpicker)", type = "screencopy", mode = "allow" })
-- System screen sharing portals (Required for OBS and browser screen sharing)
hl.permission({ binary = "/usr/lib/xdg-desktop-portal.*", type = "screencopy", mode = "allow" })

-- Trusted GUI applications that use screen sharing regularly
hl.permission({ binary = "/usr/bin(vivaldi|discord|obs|hyprland-share-picker)", type = "screencopy", mode = "allow" })

-- 3. Plugins & Cursor Position Tracking
--
-- Prevent malicious scripts from forcing external plugin loads via hyprctl
hl.permission({ binary = ".*", type = "plugin",    mode = "ask" })

-- Prevent background apps from stealthily tracking mouse movements without intent
hl.permission({ binary = ".*", type = "cursorpos", mode = "ask" })

-- Added to esys.lua: Allow Discord to track cursor position
hl.permission({ binary = "/usr/bin/(discord|obs)", type = "cursorpos", mode = "allow" })

-- 4. Hardware Security
--
-- Prevent unauthorized USB devices from automatically acting as keyboards
-- hl.permission({ binary = ".*", type = "keyboard", mode = "ask" })
