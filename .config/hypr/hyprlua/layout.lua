-- ##############
-- ### LAYOUT ###
-- ##############

-- https://wiki.hypr.land/Configuring/Layouts/Dwindle-Layout/
-- https://wiki.hypr.land/Configuring/Layouts/Master-Layout/


hl.config({
    -- Spiral tiling layout
    dwindle = {
        -- Maintain split direction (vertical/horizontal) to prevent layout shifts on close
        preserve_split = true,
        -- Enable intuitive resizing via window borders
        smart_resizing = true,
        -- Split behavior: 0=half, 1=mouse focus, 2=last active
        force_split = 2,
    },

    -- Master-stack layout (Keep main window prominent)
    master = {
        -- Placement for new windows: master, slave, or inherit
        new_status = "master",
        -- Master area size ratio (0.5 = 50% of screen)
        mfact = 0.5,
    },
})
