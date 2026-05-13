-- ##############
-- ### LAYOUT ###
-- ##############

-- https://wiki.hypr.land/Configuring/Layouts/Dwindle-Layout/
-- https://wiki.hypr.land/Configuring/Layouts/Master-Layout/


hl.config({
    dwindle = {
        preserve_split    = true,
        smart_resizing    = true,
        force_split       = 2,

        -- Improvements for layout stability
        use_active_for_splits = true,
        default_split_ratio   = 1.0,
    },

    master = {
        orientation       = "left",
        mfact             = 0.5,
        new_status        = "master",

        -- Synchronize feel with dwindle settings
        smart_resizing    = true,
        drop_at_cursor    = true,
    },
})
