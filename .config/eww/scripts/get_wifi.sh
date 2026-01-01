#!/bin/bash

generate_wifi_ui() {
    # 1. 現在の接続プロファイル名を正確に取得
    current_wifi=$(nmcli -t -g NAME connection show --active | grep -v '^lo$' | sed 's/ wifi$//' | head -n1)
    [ -z "$current_wifi" ] && current_wifi="Disconnected"

    # 2. Wi-Fiスキャン結果の取得
    data=$(nmcli -t -f IN-USE,SSID dev wifi list | grep -v ': *$' | sort -u -t: -k2,2)

    # 3. 全体コンテナの開始 (hoverlostで選択リセット)
    output="(eventbox :onhoverlost \"eww update selected_obj='{\\\"name\\\": \\\"\\\", \\\"connected\\\": false}' && ~/.config/eww/scripts/wifi.sh \" "
    output+="(box :class 'wifi-container' :orientation 'vertical' :space-evenly false :spacing 10 "

    # 4. 上段: Info Box
    output+="(box :class 'manage-info-box' :orientation 'vertical' :space-evenly false (label :class 'window-title' :text 'Wi-Fi Manager' :halign 'start') (label :class 'current-ssid' :text 'Connected: $current_wifi ' :halign 'start') ) "

    # 5. 中段: SSID List Box
    output+="(box :class 'ssid-list-box' :orientation 'vertical' :space-evenly false :spacing 5 "
    while IFS=: read -r in_use ssid; do
        [[ -z "${ssid// /}" ]] && continue
        # クリック時に名前をセット（connected状態はスクリプト側の $current_wifi で判定するためここでは不要）
        item="(eventbox :class 'ssid-item-box' :width \"150\" :cursor \"pointer\" :onclick \"eww update selected_obj='{\\\"name\\\": \\\"$ssid\\\", \\\"connected\\\": false}'\" (box :class \"ssid-item\" :width \"150\" (label :text \"$ssid\" :halign \"start\")))"
        output+="$item "
    done <<<"$data"
    output+=")"

    manage_box="(box :class 'manage-box' :orientation 'vertical' :visible {selected_obj.name != ''} :halign \"start\" :spacing 5 "
    manage_box+="(label :class 'manage-title' :wrap true :limit-width 28 :text \"Settings for: \${selected_obj.name}\") "

    manage_box+="(input :class 'wifi-input' :valign \"start\" :password {wifi_password == '' ? false : true} "
    manage_box+="        :onchange \"eww update wifi_password='{}'\" "
    manage_box+="        :onaccept \"nmcli dev wifi connect '\${selected_obj.name}' password '{}' && eww update wifi_password=''\" "
    manage_box+="        :visible {selected_obj.name != '$current_wifi'} ) "

    manage_box+="(box :class 'button-group' :spacing 10 :halign 'center' "

    manage_box+="(eventbox :class 'btn-conn' :cursor \"pointer\" "
    manage_box+="          :onclick \"nmcli dev wifi connect '\${selected_obj.name}' && eww update wifi_password=''\" "
    manage_box+="          :visible {selected_obj.name != '$current_wifi'} (box :class 'btn-conn-box' (label :text 'Connect'))) "

    manage_box+="(eventbox :class 'btn-disc' :cursor \"pointer\" "
    manage_box+="          :onclick \"nmcli dev disconnect wlp15s0\" "
    manage_box+="          :visible {selected_obj.name == '$current_wifi'} (box :class 'btn-disc-box' (label :text 'Disconnect'))) "

    manage_box+="(eventbox :class 'btn-rem' :cursor \"pointer\" "
    manage_box+="          :onclick \"nmcli connection delete '\${selected_obj.name}'\" (box :class 'btn-rem-box' (label :text 'Remove')))"
    manage_box+=")) "

    # 全ての閉じタグを調整して出力
    echo "$output $manage_box ))"
}

# 初回実行
generate_wifi_ui

# 2025年最新のnmcli monitorでリアルタイム更新
nmcli monitor | while read -r _; do
    generate_wifi_ui
done
