-- ######################
-- ### INPUT / CURSOR ###
-- ######################

-- https://wiki.hypr.land/Configuring/Basics/Variables/#input
-- https://wiki.hypr.land/Configuring/Basics/Variables/#cursor


hl.config({
    input = {
        kb_layout = "us",
        follow_mouse = 1,

        -- Keyboard repeat: Faster response and higher rate
        repeat_rate = 40,
        repeat_delay = 280,

        -- Mouse & Scroll: Flat acceleration for precision
        sensitivity = 0,
        accel_profile = "flat",
        scroll_method = "on_button_down",
        scroll_button = 274,

        -- Touchpad: Modern laptop-style gestures
        touchpad = {
            natural_scroll = true,
            tap_to_click = true,
            disable_while_typing = true,
            clickfinger_behavior = true,
            scroll_factor = 0.3,
        },

        numlock_by_default = true,
        float_switch_override_focus = 0,
    },

    cursor = {
        -- Performance & Refresh rate
        no_hardware_cursors = 1,
        no_break_fs_vrr = 2,
        min_refresh_rate = 60,
        use_cpu_buffer = 0,

        -- Theming & Interaction
        sync_gsettings_theme = true,
        enable_hyprcursor = true,
        no_warps = true,
        hide_on_key_press = true,
    },
})
