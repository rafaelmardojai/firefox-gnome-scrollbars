# Unmaintained

This repo is unmaintained and has been archived. Now you can enable overlay scrollbars in Firefox by adding  `ui.useOverlayScrollbars` with value of `1` in `about:config`. [Firefox GNOME theme](https://github.com/rafaelmardojai/firefox-gnome-theme) has this config enabled by default.

#  Firefox GNOME scrollbars

Here you can find a Firefox script providing GNOME overlay scrollbars previously included in the [Firefox GNOME theme](https://github.com/rafaelmardojai/firefox-gnome-theme).

## Installation

### Installation script
```sh
git clone https://github.com/rafaelmardojai/firefox-gnome-scrollbars.git && cd firefox-gnome-scrollbars
./install.sh
```

### Manual installation

1. Copy `user_chrome` contents (`gnome-scrollbars.uc.js` file & `utils` folder) to your Firefox profile chrome folder (`FIREFOX_PROFILE\chrome`).

2. Copy `firefox_install` contents (`config.js` file and `defaults` folder) to Firefox installation folder, usually found in `/usr/lib/firefox` or `/usr/lib64/firefox`.

> This project includes a custom JS scripts loader based on [firefox-scripts by xiaoxiaoflood](https://github.com/xiaoxiaoflood/firefox-scripts), so any `.uc.js` file put in `FIREFOX_PROFILE\chrome` will be loaded.

> If you already use some custom JS scripts loader, just copy `user_chrome/gnome-scrollbars.uc.js` file.

## Removing cache

Sometimes after changes you should remove your Firefox profile cache folder to get things working, found in `~/.cache/mozilla/firefox/`.
