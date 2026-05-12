-- ##############################
-- ### WINDOWS AND WORKSPACES ###
-- ##############################

-- https://wiki.hyprland.org/Configuring/Window-Rules/

------------------------
--- SYSTEM / FIXES   ---
------------------------

-- 最大化リクエストを無視
hl.window_rule({
    match          = { class = ".*" },
    suppress_event = "maximize",
})

-- XWayland のドラッグ修正
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

-- スクリーン共有用ブリッジの不可視化
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

-- Thunar: 透過とダイアログのフロート設定
hl.window_rule({
    match   = { class = "thunar|Thunar" },
    opacity = "0.8 0.8", -- active inactive
})

hl.window_rule({
    name = "Thunar dialogs",
    match = {
        class = "thunar|Thunar",
        title = 'Rename ".*"|File Operation Progress|Confirm to replace files|Attention'
    },
    float = true,
    center = true,
})

-- Vivaldi: 常に不透明
hl.window_rule({
    match  = { class = "vivaldi-stable" },
    opaque = true,
})

------------------------
--- GAMER / TOOLS    ---
------------------------

-- Steam の特定ウィンドウをフロート（正規表現で一括指定）
hl.window_rule({
    name = "Steam floating windows",
    match = {
        class = "steam",
        title = "Friends List|Steam - News|.* - Chat|Settings"
    },
    float  = true,
    center = true,
})

-- Steam ゲーム本体（自動でフルスクリーン化）
hl.window_rule({
    name = "Steam Games",
    match = { class = "steam_app_.*" },
    fullscreen = true,
})

-- 一般的なダイアログ/ファイルピッカーのフロート化
hl.window_rule({
    name = "Common dialogs",
    match = {
        title = "Open File|Save File|Confirm to replace files|Select a File|Choose Wallpaper"
    },
    float  = true,
    center = true,
})

------------------------
--- LAYER RULES      ---
------------------------

-- Eww 
hl.layer_rule({
    match        = { namespace = "eww-powerwd" },
    blur         = true,
    ignore_alpha = 0.5,
})

-- Dunst (通知の背景をボカす)
hl.layer_rule({
    match        = { namespace = "dunst" },
    blur         = true,
    ignore_alpha = 0.5,
})
