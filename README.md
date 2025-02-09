# Step 1
```
sudo pacman -R nano
sudo pacman -S neovim
```

# Step 2

**Change hyprland.conf**

`nvim ~/.config/hypr/hyprland.conf`

**Comment**
`# autogenerated = 1 # remove this line to remove the warning`

**Add**
`monitor= eDP-1,1920x1080@144,0x0,1`

**Set programs that you use**
```
$terminal = kitty
$fileManager = thunar
$menu = wofi --show drun
$browser = chromium
```

**Uncomment**
`exec-once = waybar & hyprpaper`

**Add language change**
```
kb_layout = us,ru
kb_option = grp:win_space_toggle
```

**Touchpad scroll**
`natural_scroll = true`

