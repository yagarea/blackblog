---
title:  "Firefox customization"
category: "Personal"
language: "CZ"
latex: false
layout: post
---

This article is about my journey to customize my firefox browser for maximal workflow and efficiency.

- .
{:toc}
---

## UserChrome styles

At first you need to create chrome directory in your profile folder. 
It is located in `~/.mozilla/firefox/6zw5phcp.default-release/chrome`. In this directory create plain text file `userChrome.css`. 

Than you need to enable user profile styles. Type `about:config` in to firefox search bar. 
Firefox will warn you to proceed with caution. Click accept button and search for `userprof`. 
Double-click the `toolkit.legacyUserProfileCustomizations.stylesheets` preference to toggle the value from false to true. 
This will take effect after restarting firefox. 

### Hide tab bar
Because I use TreeTab extension to manage my tabs the default tab bar is just wasting space on my screen. So I decided to hide it. To hide Tab bar you need to add following code to your `userChrome.css` file:

```css
#TabsToolbar {
  visibility: collapse !important;
}
```
Full effect will take after restart.

## Extensions

### TreeTab

I have been using this extension as main tab manager for one year. 
During that time I developed visual configuration which is best for my needs. 
There is config file (with added white spaces to make it easier to read):

```json
{
	"ToolbarShow":true,
	"ColorsSet":{
		"scrollbar_height":"5px",
		"scrollbar_width":"6px",
		"children_padding_left":"17px",
		"tab_header_border_radius":"0px",
		"pin_list_background":"#424242",
		"attention_background":"#797979",
		"group_list_background":"#424242",
		"tab_list_background":"#5e5e5e",
		"group_list_default_font_color":"#d5d5d5",
		"group_list_borders":"#a9a9a9",
		"pin_list_border_bottom":"#212121",
		"attention_border":"#929292",
		"toolbar_background":"#424242",
		"toolbar_shelf_background":"#424242",
		"toolbar_border_bottom":"#929292",
		"button_background":"#797979",
		"button_hover_background":"#919191",
		"button_on_background":"#919191",
		"button_icons":"#d5d5d5",
		"button_icons_hover":"#d5d5d5",
		"button_on_icons":"#d5d5d5",
		"button_border":"#5e5e5e",
		"button_hover_border":"#5e5e5e",
		"filter_box_background":"#929292",
		"filter_box_font":"#feffff",
		"button_shelf_background":"#797979",
		"button_shelf_hover_background":"#919191",
		"button_shelf_icons":"#d5d5d5",
		"button_shelf_border":"#5e5e5e",
		"button_shelf_hover_border":"#5e5e5e",
		"button_shelf_icons_hover":"#000000",
		"group_list_button_hover_background":"#797979"
		},
	"TabsSizeSetNumber":0,
	"TabsMargins":"0",
	"theme_name":"Personal tree tabs theme",
	"theme_version":4
}
```

### uBlock

### uMatrix

### KeepassXC

### Dark reader


