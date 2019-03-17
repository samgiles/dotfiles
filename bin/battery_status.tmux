#!/usr/bin/env bash

battery_info=$(pmset -g batt | tail -n1)
echo ${battery_info} | cut -d" " -f3 | sed 's/;//g'
