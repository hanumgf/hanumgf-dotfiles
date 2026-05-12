-- #################
-- ### AUTOSTART ###
-- #################


hl.on("hyprland.start", function()
    local commands = {
        -- 1. 基盤系（これがないと他のアプリがバグる可能性があるもの）
        "dbus-update-activation-environment --all",
        "dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP",

        -- 2. インプット・クリップボード（実用性）
        "fcitx5 -d --replace",
        "wl-paste --type text --watch cliphist store",
        "wl-paste --type image --watch cliphist store",

        -- 3. 視覚的要素（最優先：ユーザーへのフィードバック）
        'hyprctl setcursor "Hakurei Reimu-hyprcursor" 24',
        "~/.config/hypr/scripts/wallpaper_start.sh",

        -- 4. UI・デーモン系
        "~/.config/eww/launch_bar.sh",
        "dunst",
        "hypridle",
        "gsr-ui",

        -- 5. バックグラウンド処理・後処理
        "~/.config/hypr/scripts/dns-warmup.sh",
        "sleep 2 && hyprctl reload"
    }

    for i = 1, #commands do
        hl.exec_cmd(commands[i] .. " &")
    end
end)

