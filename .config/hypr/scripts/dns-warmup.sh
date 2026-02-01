#!/bin/bash

DOMAINS=(
  "google.com"
  "youtube.com"
  "github.com"
  "archlinux.org"
  "discord.com"
  "discord.gg"
  "amazon.co.jp"
  "steamcommunity.com"
  "x.com"
)
DNS_SERVERS=("127.0.0.1" "::1")
TYPES=("A" "AAAA")

MAX_RETRIES=15
RETRY_COUNT=0

while ! dig @127.0.0.1 localhost >/dev/null 2>&1; do
  if [ $RETRY_COUNT -ge $MAX_RETRIES ]; then
    notify-send "エラー: DNSサーバーがタイムアウトしました"
    exit 1
  fi
  sleep 1
  ((RETRY_COUNT++))
done

for server in "${DNS_SERVERS[@]}"; do
  for domain in "${DOMAINS[@]}"; do
    for type in "${TYPES[@]}"; do
      dig @"$server" "$domain" "$type" +short +time=5 +tries=1 >/dev/null 2>&1 &
    done
  done
done

wait
notify-send "DNSキャッシュのウォームアップが完了しました. (IPv4/IPv6)"
