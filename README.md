# Step 1
```
sudo pacman -R nano dolphin
sudo pacman -S python-pip wofi kitty freetype2 openmpi jdk-openjdk java-environment zsh clang qtcreator git hyprlock hyprpaper waybar ttf-font-awesome otf-font-awesome ttf-jetbrains-mono ttf-dejavu obsidian pavucontrol opencv vtk feh ranger thunar meson nwg-look papirus-icon-theme fastfetch file powerline-fonts inetutils ttf-font-awesome otf-font-awesome ttf-jetbrains-mono neovim code ttf-dejavu bluez bluez-utils blueman obs-studio telegram-desktop vlc nvidia nvidia-utils nvidia-settings libva-nvidia-driver

sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -S hyprshot onlyoffice-bin pcl wlogout

```
# Step 2

**Add github**

```
ssh-keygen -t ed25519 -C "newanonim2019@gmail.com"
cat .ssh/id_ed25519.pub
git config --global user.email "newanonim2019@gmail.com"
git config --global user.name "RoyProgramming"
```

# Step 3

**Add repos**

```
cd Documents

git clone git@github.com:vinceliuice/Graphite-gtk-theme.git
git clone git@github.com:RoyProgramming/hyprlandSettings.git
```

# Step 4

**Copy config**

```
cd hyprlandSettings
cp -r kitty waybar wlogout wofi hypr nvim ~/.config

cd Graphite-gtk-theme
./install.sh
```

# Step 5

**Zsh themes**

```
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

reboot
```






