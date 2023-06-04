---
title:  "My i3wm keyboard layout"
category: "Software"
language: "EN"
latex: false
---

> <kbd>⌘</kbd> = mod button

| Key combination 	                                        | Action 							|
|-----------------------------------------------------------|-----------------------------------|
| <kbd>⌘</kbd>+<kbd>Enter</kbd>			                    | Open terminal						|
| <kbd>⌘</kbd>+<kbd>q</kbd>				                    | Kill current app					|
| <kbd>⌘</kbd>+<kbd>space</kbd>			                    | Open rofi menu					|
| <kbd>⌘</kbd>+<kbd>h</kbd> or <kbd>⌘</kbd>+<kbd>↓</kbd>	| Move focus to the left			|
| <kbd>⌘</kbd>+<kbd>j</kbd> or <kbd>⌘</kbd>+<kbd>→</kbd>	| Move focus to the down			|
| <kbd>⌘</kbd>+<kbd>k</kbd> or <kbd>⌘</kbd>+<kbd>↑</kbd>	| Move focus to the up				|
| <kbd>⌘</kbd>+<kbd>l</kbd> or <kbd>⌘</kbd>+<kbd>←</kbd>	| Move focus to the right			|
| <kbd>⌘</kbd>+<kbd>Shift</kbd>+<kbd>h</kbd>			    | Move focused window to the left	|
| <kbd>⌘</kbd>+<kbd>Shift</kbd>+<kbd>j</kbd>			    | Move focused window to the down	|
| <kbd>⌘</kbd>+<kbd>Shift</kbd>+<kbd>k</kbd>			    | Move focused window to the up		|
| <kbd>⌘</kbd>+<kbd>Shift</kbd>+<kbd>l</kbd>			    | Move focused window to the right	|
| <kbd>⌘</kbd>+<kbd>f</kbd>				                    | Toggle fullscreen					|
| <kbd>⌘</kbd>+<kbd>s</kbd>				                    | Set container layout to stacked	|
| <kbd>⌘</kbd>+<kbd>w</kbd>			                    	| Set container layout to tabbed	|
| <kbd>⌘</kbd>+<kbd>e</kbd>			                    	| Set container layout to split		|
| <kbd>⌘</kbd>+<kbd>,</kbd>			                    	| Move workspace to left monitor	|
| <kbd>⌘</kbd>+<kbd>.</kbd>			                    	| Move workspace to right monitor	|
| <kbd>⌘</kbd>+<kbd>`</kbd>		                    		| Go to workspace 0					|
| <kbd>⌘</kbd>+<kbd>number</kbd>	                        | Go to workspace number			|
| <kbd>⌘</kbd>+<kbd>-</kbd>			                    	| Go to workspace 11				|
| <kbd>⌘</kbd>+<kbd>=</kbd>			                    	| Go to workspace 12				|
| <kbd>⌘</kbd>+<kbd>Backspace</kbd>	                    	| Go to workspace 13				|
| <kbd>⌘</kbd>+<kbd>z</kbd>			                    	| Go to workspace reserved fot Zoom	|
| <kbd>⌘</kbd>+<kbd>t</kbd>			                    	| Go to workspace reserved for Messenger|
| <kbd>⌘</kbd>+<kbd>d</kbd>			                    	| Go to workspace reserved for Discord	|
| <kbd>⌘</kbd>+<kbd>Shift</kbd>+<kbd>`</kbd>		        | Move current window to workspace 0	|
| <kbd>⌘</kbd>+<kbd>Shift</kbd>+<kbd><i>number</i></kbd>    | Move workspace _number_				|
| <kbd>⌘</kbd>+<kbd>Shift</kbd>+<kbd>-</kbd>			    | Move workspace 11					|
| <kbd>⌘</kbd>+<kbd>Shift</kbd>+<kbd>=</kbd>			    | Move workspace 12					|
| <kbd>⌘</kbd>+<kbd>Shift</kbd>+<kbd>Backspace</kbd>	    | Move workspace 13					|
| <kbd>⌘</kbd>+<kbd>Shift</kbd>+<kbd>c</kbd>			    | Reload i3wm config file			|
| <kbd>⌘</kbd>+<kbd>Shift</kbd>+<kbd>r</kbd>			    | Restart i3wm						|
| <kbd>⌘</kbd>+<kbd>Shift</kbd>+<kbd>e</kbd>			    | Exit i3wm							|

### Useful command for key binding

Get key code of any keyboard button with this command:
```bash
xbindkeys --key
```

To find out `WM_CLASS` of Xserver window run this command:
```bash
xprop | grep WM_CLASS | awk '{print $4}'
```
and click on window in question. The `WM_CLASS` will be output as string into your 
terminal.

