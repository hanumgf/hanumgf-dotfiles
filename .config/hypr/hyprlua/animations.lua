-- ##################
-- ### animations ###
-- ##################

--  https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/

-- Bezier
hl.curve("wind",       { type = "bezier", points = { {0.05, 0.9},  {0.1, 1} } })
hl.curve("winIn",      { type = "bezier", points = { {0.2, 0.2},  {0, 1} } })
hl.curve("winOut",     { type = "bezier", points = { {0.1, 0},    {0, 1} } })
hl.curve("liner",      { type = "bezier", points = { {1, 1},      {1, 1} } })
hl.curve("overshot",   { type = "bezier", points = { {0.05, 0.9},  {0.1, 1.05} } })
hl.curve("quickOut",   { type = "bezier", points = { {0.22, 1},    {0.36, 1} } })
hl.curve("smoothOut",  { type = "bezier", points = { {0.5, 0},    {0.99, 0.99} } })
hl.curve("smoothIn",   { type = "bezier", points = { {0.5, -0.5}, {0.68, 1.5} } })

-- Animation
hl.animation({ leaf = "windows",       enabled = true, speed = 6.0, bezier = "wind",      style = "slide" })
hl.animation({ leaf = "windowsIn",     enabled = true, speed = 5.0, bezier = "winIn",     style = "slide" })
hl.animation({ leaf = "windowsOut",    enabled = true, speed = 3.0, bezier = "smoothOut", style = "slide" })
hl.animation({ leaf = "windowsMove",   enabled = true, speed = 5.0, bezier = "wind",      style = "slide" })

hl.animation({ leaf = "border",        enabled = true, speed = 1.0, bezier = "liner" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 1.0, bezier = "liner", style = "loop" })

hl.animation({ leaf = "fade",          enabled = true, speed = 3.0, bezier = "smoothOut" })
hl.animation({ leaf = "workspaces",    enabled = true, speed = 5.0, bezier = "overshot" })

-- Workspace-specific settings for git/v0.42.0+
hl.animation({ leaf = "workspacesIn",  enabled = true, speed = 5.0, bezier = "winIn",     style = "slide" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 5.0, bezier = "winOut",    style = "slide" })

-- layer
hl.animation({ leaf = "layers",        enabled = true, speed = 4.0, bezier = "winIn",     style = "fade" })
hl.animation({ leaf = "layersIn",      enabled = true, speed = 3.0, bezier = "winIn",     style = "popin" })
hl.animation({ leaf = "layersOut",     enabled = true, speed = 5.0, bezier = "winOut",    style = "fade" })
