# Install yay and rustup
yay -S --noconfirm rustup

# Set rustup to default stable version
rustup default stable

# Install the following packages
yay -S --noconfirm gdb ninja gcc cmake meson libxcb xcb-proto xcb-util xcb-util-keysyms libxfixes libx11 libxcomposite xorg-xinput libxrender pixman wayland-protocols cairo pango seatd libxkbcommon xcb-util-wm xorg-xwayland libinput libliftoff libdisplay-info cpio tomlplusplus nodejs plymouth sddm python tk gtk3 gtk4 gtk-layer-shell base-devel strawberry brightnessctl network-manager-applet terminator wofi qt5-gsettings kitty blueman zip unzip nemo ffmpegthumbs playerctl lightly-qt kvantum polkit-kde-agent ttf-font-awesome-5 jq gufw qt5ct tar gammastep wl-clipboard nwg-look-bin visual-studio-code-bin firefox easyeffects hyprpicker hyprshotgun hyprshot-git bc sysstat brightnessctl sassc systemsettings ttf-font-awesome-5 orchis-theme-git acpi fish playerctl 

# Clone the repository
git clone git@github.com:AhmedSaadi0/my-hyprland-config.git

# Copy files
cp -r my-hyprland-config ~/.config/hypr
cp -r ~/.config/hypr/configs/ags ~/.config/ags
cp -r ~/.config/hypr/configs/wofi ~/.config/wofi
cp ~/.config/hypr/configs/config.fish ~/.config/fish/config.fish

# Set permissions for scripts
sudo chmod +x ~/.config/hypr/scripts/*
sudo chmod +x ~/.config/ags/scripts/*

# Setup environment
sudo cp /etc/environment /etc/environmentOLD
echo 'QT_QPA_PLATFORMTHEME=qt5ct' | sudo tee -a /etc/environment

# Copy theme files
mkdir ~/.local/share/color-schemes/
cp ~/.config/ags/modules/theme/plasma-colors/* ~/.local/share/color-schemes/
cp ~/.config/hypr/configs/qt5ct.conf ~/.config/qt5ct/

mkdir ~/.fonts
cp -r ~/.config/hypr/configs/.fonts/* ~/.fonts

mkdir ~/.local/share/icons
tar xvf ~/.config/hypr/configs/icons/BeautySolar.tar.gz -C ~/.local/share/icons
tar xvf ~/.config/hypr/configs/icons/Delight-brown-dark.tar.gz -C ~/.local/share/icons
tar xvf ~/.config/hypr/configs/icons/Gradient-Dark-Icons.tar.gz -C ~/.local/share/icons
tar xvf ~/.config/hypr/configs/icons/Infinity-Dark-Icons.tar.gz -C ~/.local/share/icons
tar xvf ~/.config/hypr/configs/icons/kora-grey-light-panel.tar.gz -C ~/.local/share/icons
tar xvf ~/.config/hypr/configs/icons/Magma.tar.gz -C ~/.local/share/icons
tar xvf ~/.config/hypr/configs/icons/NeonIcons.tar.gz -C ~/.local/share/icons
tar xvf ~/.config/hypr/configs/icons/la-capitaine-icon-theme.tar.gz -C ~/.local/share/icons
tar xvf ~/.config/hypr/configs/icons/oomox-aesthetic-dark.tar.gz -C ~/.local/share/icons
tar xvf ~/.config/hypr/configs/icons/Vivid-Dark-Icons.tar.gz -C ~/.local/share/icons
tar xvf ~/.config/hypr/configs/icons/Windows11-red-dark.tar.gz -C ~/.local/share/icons
tar xvf ~/.config/hypr/configs/icons/Zafiro-Nord-Dark-Black.tar.gz -C ~/.local/share/icons

mkdir ~/.themes
tar xvf ~/.config/hypr/configs/gtk-themes/Cabinet-Light-Orange.tar.gz -C ~/.themes
tar xvf ~/.config/hypr/configs/gtk-themes/Kimi-dark.tar.gz -C ~/.themes
tar xvf ~/.config/hypr/configs/gtk-themes/Nordic-darker-standard-buttons.tar.gz -C ~/.themes
tar xvf ~/.config/hypr/configs/gtk-themes/Orchis-Green-Dark-Compact.tar.gz -C ~/.themes
tar xvf ~/.config/hypr/configs/gtk-themes/Shades-of-purple.tar.xz -C ~/.themes
tar xvf ~/.config/hypr/configs/gtk-themes/Tokyonight-Dark-BL.tar.gz -C ~/.themes
tar xvf ~/.config/hypr/configs/gtk-themes/Dracula.tar.gz -C ~/.themes

VISUAL=/usr/bin/nano crontab -e
* * * * * ~/.config/hypr/scripts/battery.sh
yay -S --noconfirm xdg-user-libs xdg-user-libs-gtk
xdg-usr-libs update
systemctl scan start endable all systemctl progrms
