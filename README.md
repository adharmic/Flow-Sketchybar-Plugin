## Overview:

This plug-in seeks to connect [https://www.flow.app/](Flow's pomodoro timing app) to your sketchybar config.

Just add the item in your `sketchybarrc` and pass in the path to this script to the `script` parameter.

Don't forget to mark the script as executable!

## Extra Info:
The script works by using Flow's built-in AppleScript API to query for the current phase and time remaining.
It then uses that information to create the label and apply an appropriate icon. 

(I chose a sun and moon theme, but you can pick any icon that fits in your config. Try [https://developer.apple.com/sf-symbols/](sf-symbols) for some options)

Here's an example of how I load the script in my `sketchybarrc`:

`
sketchybar --add item pomodoro left \
  --set pomodoro \
  script="$PLUGIN_DIR/pomodoro.sh" \
  update_freq=1 \
  icon.font.size=15 \
  icon.color=0xffcc6d3c
`
