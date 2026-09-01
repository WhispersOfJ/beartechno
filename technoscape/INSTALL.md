# Technoscape — install guide

Theme for i3 (>= 4.22, gaps built in) + Polybar + Rofi/dmenu + picom + dunst + Alacritty. Palette: dark background `#0a0e14`, neon accents cyan `#00e5ff`, magenta `#ff2a6d`, green `#05ffa1`, purple `#b967ff`.

## 1. Packages

Arch:
```bash
sudo pacman -S i3 polybar rofi picom feh dunst nm-applet copyq flameshot alacritty \
               jetbrains-mono-nerd ttf-jetbrains-mono-nerd
```

Debian/Ubuntu:
```bash
sudo apt install i3 polybar rofi picom feh dunst network-manager-gnome copyq flameshot alacritty \
                 fonts-jetbrains-mono  # nerd fonts from ryanoasis releases
```

## 2. Install configs

```bash
mkdir -p ~/.config/i3 ~/.config/polybar ~/.config/rofi ~/.config/picom
mkdir -p ~/.config/dunst ~/.config/alacritty
cp technoscape/i3/config            ~/.config/i3/config
cp technoscape/polybar/config.ini   ~/.config/polybar/config.ini
cp technoscape/rofi/technoscape.rasi ~/.config/rofi/technoscape.rasi
cp technoscape/picom/picom.conf     ~/.config/picom/picom.conf
cp technoscape/dunst/dunstrc        ~/.config/dunst/dunstrc
cp technoscape/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml
cp technoscape/Xresources           ~/.Xresources
xrdb -merge ~/.Xresources
```

Wallpaper: put a dark neon background at `~/wallpapers/technoscape.png` (the i3 config already runs `feh --bg-fill`).

## 3. First login

1. Log out of KDE; at the login screen (SDDM) pick the **i3** session.
2. i3 asks for the mod key — choose Win (Mod4).
3. `Mod+d` — rofi/dmenu, `Mod+Enter` — terminal, `Mod+Shift+e` — exit.

## 4. Keybindings

| Keys | Action |
|---|---|
| `Mod+d` / `Alt+d` | rofi / dmenu |
| `Mod+1..7` | workspaces: term, web, code, chat, media, sys, misc |
| `Mod+h/j/k/l` | directional focus (vim-style) |
| `Mod+Shift+h/j/k/l` | move window |
| `Mod+v` / `Mod+b` | vertical / horizontal split |
| `Mod+f` | fullscreen |
| `Mod+minus` | scratchpad (hidden terminal) |
| `Print` | flameshot screenshot |
| `Mod+Shift+x` | i3lock |

## 5. Finishing touches

- **Terminal**: Alacritty config included; Kitty can reuse the same 16-color palette.
- **GTK apps**: `nwg-look` or `lxappearance` -> dark theme (Tokyo Night / Catppuccin Mocha) + Papirus-Dark icons.
- **Notifications**: dunst config included; critical alerts use magenta.
- **Firefox/Chrome**: dark theme + an extension recoloring the UI with the same palette.

## 6. Rollback

KDE is never removed: i3 installs alongside it and you can pick the session in SDDM. Only consider removing Plasma after 1-2 weeks on i3.
