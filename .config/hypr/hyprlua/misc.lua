-- ################################
-- ### Rendering / Optimization ###
-- ################################

-- See https://wiki.hypr.land/Configuring/Basics/Variables/#misc
-- and https://wiki.hypr.land/Configuring/Basics/Variables/#render

hl.config({
    misc = {
        disable_hyprland_logo          = true,
        disable_splash_rendering       = true,
        background_color               = 0x000000,
        force_default_wallpaper        = 0,

        vrr                            = 0,

        focus_on_activate              = false,
        on_focus_under_fullscreen      = 0,
        exit_window_retains_fullscreen = false,

        initial_workspace_tracking     = 1,

        mouse_move_focuses_monitor     = true,
        always_follow_on_dnd           = true,
        layers_hog_keyboard_focus      = true,

        animate_manual_resizes         = false,
        animate_mouse_windowdragging   = false,

        allow_session_lock_restore     = true,
        disable_autoreload             = false,

        mouse_move_enables_dpms        = false,
        key_press_enables_dpms         = true,
    },

    render = {
        direct_scanout             = 0,
        send_content_type          = false,
        new_render_scheduling      = false,
        commit_timing_enabled      = true,
        expand_undersized_textures = true,

        xp_mode                    = false,

        cm_enabled                 = true,
        cm_auto_hdr                = 0,
        non_shader_cm              = 2,
        cm_sdr_eotf                = "gamma22force",
        ctm_animation              = 2,
    },

    xwayland = {
        enabled = true,
        force_zero_scaling = true,
    },

    debug = {
        vfr                  = true,
        damage_tracking      = 2,

        disable_logs         = true,
        disable_time         = true,

        disable_scale_checks = true,

        invalidate_fp16      = 1,
    },
})

