# Step 1
```
sudo pacman -R nano dolphin
sudo pacman -S qtcreator git hyprlock hyprpaper waybar ttf-font-awesome otf-font-awesome ttf-jetbrains-mono ttf-dejavu obsidian pavucontrol opencv vtk feh ranger thunar meson nwg-look papirus-icon-theme fastfetch file powerline-fonts inetutils ttf-font-awesome otf-font-awesome ttf-jetbrains-mono neovim code ttf-dejavu rofi bluez bluez-utils blueman obs-studio telegram-desktop vlc

yay -S pcl hyprshot onlyoffice-bin pcl

```

# Step 2

**Add repos**

```
git clone git@github.com:vinceliuice/Graphite-gtk-theme.git
```

# Step 3

**Copy config**

```
cd hyprland-config
cp -r kitty waybar wlogout wofi hypr nvim ~/.config

cd bspwm
cp -r nvim ~/.config

cd Graphite-gtk-theme
./install.sh
```
# Step 4

**Add github**

```
ssh-keygen -t ed25519 -C "newanonim2019@gmail.com"
cat .ssh/id_ed25519.pub
git config --global user.email "newanonim2019@gmail.com"
git config --global user.name "RoyProgramming"
```

# Step 5

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






