---
title:  "Firefox customization"
category: "Software"
language: "EN"
latex: true
---

This article is about my journey to customize my firefox browser for maximal workflow and efficiency.

- .
{:toc}

![Firefox layout](/assets/img/other/firefox-layout.png)

---

## UserChrome styles

At first you need to create chrome directory in your profile folder.
It is located in `~/.mozilla/firefox/profile-name.default-release/chrome`. In this directory create plain text file `userChrome.css`. 

Than you need to enable user profile styles. Type `about:config` in to firefox search bar.
Firefox will warn you to proceed with caution. Click accept button and search for `userprof`.
Double-click the `toolkit.legacyUserProfileCustomizations.stylesheets` preference to toggle the value from `false` to `true`.
This will take effect after restarting firefox.

### Hide tab bar
Because I use TreeTab extension to manage my tabs the default tab bar is just wasting space on my screen. So I decided to hide it. To hide Tab bar you need to add following code to your `userChrome.css` file:

```css
/* Hide tabs */
#TabsToolbar {
  visibility: collapse !important;
}

/*Hide sidebar menu */
#sidebar-box > #sidebar-header {
  display: none;
}
```
Full effect will take after restart.

## Extensions

### TreeTab [[dowwnload](https://addons.mozilla.org/en-US/firefox/addon/tree-tabs/)]

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
    "theme_name":"BlackBlog tree tabs theme",
    "theme_version":4
}
```

You can [download this theme here](/assets/download/blackblog-treetabs-theme.tt_theme) and import it tree tabs settings.
This is the easiest way.

## Extensions
Remember that more extensions you have slower the firefox will run.
I recommend read descriptions or README files of these extensions and decide if you need them.


### Security
- [**uBlock origin**](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/) -
  Best blocker of ads and trackers. [[GPLv3](https://github.com/gorhill/uBlock)]
- [**uMatrix**](https://addons.mozilla.org/en-US/firefox/addon/umatrix/) -
  Awesome tool for fine tuning page scripts and privileges. [[GPLv3](https://github.com/gorhill/uMatrix)]
- [**KeepassXC**](https://addons.mozilla.org/en-US/firefox/addon/keepassxc-browser/) -
  KeepassXC password manager integration [[GPLv3](https://github.com/keepassxreboot/keepassxc-browser)]
- [**LocalCND**](https://addons.mozilla.org/en-US/firefox/addon/localcdn-fork-of-decentraleyes/) [[MPL-2.0](https://codeberg.org/nobody/LocalCDN)] /
  [**Decentraleyes**](https://addons.mozilla.org/en-US/firefox/addon/decentraleyes/) [[MPL-2.0](https://git.synz.io/Synzvato/decentraleyes)] -
  Local CNDs (I prefer LocalCND)
- [**Privacy badger**](https://addons.mozilla.org/en-US/firefox/addon/privacy-badger17/) -
  Hidden tracker remover [[GPLv3](https://github.com/EFForg/privacybadger)]
- [**ClearURLs**](https://addons.mozilla.org/en-US/firefox/addon/clearurls/) -
  Clears tracking parts of URLs [[GPLv3](https://gitlab.com/ClearURLs/ClearUrls/)]
- [**IStillDontCareAboutCookies**](https://addons.mozilla.org/en-US/firefox/addon/istilldontcareaboutcookies/) -
  Auto management of cookie consent [[GPLv3](https://github.com/OhMyGuus/I-Still-Dont-Care-About-Cookies)]


### Youtube
- [**SponsorBlock**](https://addons.mozilla.org/en-US/firefox/addon/sponsorblock/) -
  Skip youtube sponsor segments [[LGPL](https://github.com/ajayyy/SponsorBlock)]
- [**Remove youtube shorts**](https://addons.mozilla.org/en-US/firefox/addon/remove-youtube-shorts/) -
  Removes youtube shorts [[MIT](https://github.com/raven0230/Remove-Youtube-Shorts)]
- [**Return youtube dislike**](https://addons.mozilla.org/en-US/firefox/addon/return-youtube-dislikes/) -
  Returns youtube dislike statistics [[GPLv3](https://github.com/Anarios/return-youtube-dislike)]
- [**HideFeed**](https://addons.mozilla.org/en-US/firefox/addon/hide-feed/) -
  Hides automated feeds [proprietary]


### Quality of life
- [**Libredirect**](https://addons.mozilla.org/en-US/firefox/addon/libredirect/) -
  Automatic redirect to libre front end for popular sites [[GPLv3](https://codeberg.org/LibRedirect/)]
- [**DarkReader**](https://addons.mozilla.org/en-US/firefox/addon/darkreader/) -
  Generates dark mode styles for websites without them [[MIT](https://github.com/darkreader/darkreader)]
  (WARNING: This can really slow down your browser)
- [**Cookie quick manager**](https://addons.mozilla.org/en-US/firefox/addon/cookie-quick-manager/) -
  Manual cookie manager [[GPLv3](https://github.com/ysard/cookie-quick-manager)]
- [**Violent monkey**](https://addons.mozilla.org/en-US/firefox/addon/violentmonkey/) -
  user script manager [[MIT](https://github.com/violentmonkey/violentmonkey)]

