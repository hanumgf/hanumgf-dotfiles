-- #####################
-- ### ECOSYSTEM / 
-- #######################


hl.config ({
    ecosystem = {
        no_update_news = false,
        no_donation_nag = true,
        enforce_permissions = true,
    },
})


-- 1. 広範なパスに対する確認設定
hl.permission({ binary = "/usr/(bin|lib|lib32|lib64)/.*", type = "screencopy", mode = "ask" })

-- 2. 個別のアプリに対する許可設定
hl.permission({ binary = "/usr/bin/(grim|slurp|awww|vivaldi|discord|obs|hyprland-share-picker|hypr.*|xdg-desktop-portal.*)", type = "screencopy", mode = "allow"})

