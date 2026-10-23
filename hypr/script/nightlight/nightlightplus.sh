#! /usr/bin/bash
pkill hyprsunset
sleep .1
x=$(cat /home/nitish/.config/hypr/script/nightlight/value.txt)
x=$((x = x + 500))
if [[ "$x" -gt 20000 ]]; then
  x=20000
fi
echo "$x" >/home/nitish/.config/hypr/script/nightlight/value.txt
hyprsunset -t $x
