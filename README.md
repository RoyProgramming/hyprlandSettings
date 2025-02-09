# Step 1
```
sudo pacman -R nano
sudo pacman -S thunar meson nwg-look papirus-icon-theme fastfetch pkg file powerline-fonts inetutils yay ttf-font-awesome otf-font-awesome ttf-jetbrains-mono neovim

yay -S hyprshot

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

# Step 2.1

**KEYBINDINGS**

```
$mainMod = Mod1 # Sets "Windows" key as main modifier

bind = $mainMod, L, exec, hyprlock
bind = $mainMod, RETURN, exec, $terminal
bind = $mainMod, E, exec, $fileManager
bind = $mainMod, B, exec, chromium
bind = $mainMod, T, exec, telegram-desktop
bind =, PRINT, exec, hyprshot -m region

bindel = , XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+
bindel = , XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
bindl = , XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
```

# Step 3

**Add github**

```
ssh-keygen -t ed25519 -C "newanonim2019@gmail.com"
cat .ssh/id_ed25519.pub
git config --global user.email "newanonim2019@gmail.com"
git config --global user.name "RoyProgramming"
```

# Step 4

**Add repos**

```
git clone git@github.com:Aptivace/hyprland-config.git
git clone git@github.com:vinceliuice/Graphite-gtk-theme.git
git clone git@github.com:RoyProgramming/bspwm.git
```

# Step 5

**Copy config**

```
cd hyprland-config
cp -r kitty waybar wlogout wofi ~/.config
cp hypr/hyprlock.conf ~/.config/hypr

cd bspwm
cp -r nvim ~/.config

cd Graphite-gtk-theme
./install.sh
```

# Step 6

**Zsh themes**

```
sudo pacman -S zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

nvim ~/.zshrc
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source ~/.zshrc

chsh
/bin/zshrc
```






