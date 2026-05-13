-- ##############################
-- ### WINDOWS AND WORKSPACES ###
-- ##############################

-- https://wiki.hyprland.org/Configuring/Window-Rules/


-----------------------
--- SYSTEM / FIXES   ---
------------------------

-- Ignore maximize requests from windows
hl.window_rule({
    match          = { class = ".*" },
    suppress_event = "maximize",
})

-- Fix drag-and-drop bugs on XWayland
hl.window_rule({
    name = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },
    no_focus = true,
})

-- Make XWayland video bridge invisible for clean screen sharing
hl.window_rule({
    name = "xwayland-video-bridge-fixes",
    match = { class = "xwaylandvideobridge" },

    opacity          = 0.0,
    no_initial_focus = true,
    no_focus         = true,
    no_anim          = true,
    no_blur          = true,
    max_size         = "1 1",
})

------------------------
--- APP SPECIFIC     ---
------------------------

-- Thunar: Set opacity for main window
hl.window_rule({
    match   = { class = "thunar|Thunar" },
    opacity = "0.8 0.8", -- active inactive
})

-- Thunar: Float and center standard dialog windows
hl.window_rule({
    name = "Thunar dialogs",
    match = {
        class = "thunar|Thunar",
        title = 'Rename ".*"|File Operation Progress|Confirm to replace files|Attention'
    },
    float = true,
    center = true,
})

-- Vivaldi: Always keep fully opaque
hl.window_rule({
    match  = { class = "vivaldi-stable" },
    opaque = true,
})

------------------------
--- GAMER / TOOLS    ---
------------------------

-- Float and center secondary Steam windows
hl.window_rule({
    name = "Steam floating windows",
    match = {
        class = "steam",
        title = "Friends List|Steam - News|.* - Chat|Settings"
    },
    float  = true,
    center = true,
})

-- Steam Games: Force full-screen launch automatically
hl.window_rule({
    name = "Steam Games",
    match = { class = "steam_app_.*" },
    fullscreen = true,
})

-- Float and center general desktop dialogs or file pickers
hl.window_rule({
    name = "Common dialogs",
    match = {
        title = "Open File|Save File|Confirm to replace files|Select a File|Choose Wallpaper"
    },
    float  = true,
    center = true,
})

------------------------
--- ECOSYSTEM       ----
------------------------

-- Optimize OBS performance when unfocused
hl.window_rule({
    name             = "OBS Performance",
    match            = { class = "obs" },
    render_unfocused = false,
})

------------------------
--- LAYER RULES      ---
------------------------

-- Eww panel configuration
hl.layer_rule({
    match        = { namespace = "eww-powerwd" },
    blur         = true,
    ignore_alpha = 0.5,
})

-- Dunst (Apply background blur to notifications)
hl.layer_rule({
    match        = { namespace = "dunst" },
    blur         = true,
    ignore_alpha = 0.5,
})
