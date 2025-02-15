#!/usr/bin/env bash

polybar-msg cmd quit

#polybar main 2>&1 | tee -a /tmp/polybar-main.log & disown
#polybar right 2>&1 | tee -a /tmp/polybar-right.log & disown

polybar primary 2>&1 | tee -a /tmp/polybar-primary & disown
polybar secondary 2>&1 | tee -a /tmp/polybar-secondary & disown
polybar home 2>&1 | tee -a /tmp/polybar-home & disown
polybar temporary 2>&1 | tee -a /tmp/polybar-temporary & disown

