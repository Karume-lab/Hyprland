sudo cp ./fstab /etc/fstab
sudo cp -r ./scripts /usr/local/bin
sudo cp ./hypr/monitors.conf ~/.config/hypr/monitors.conf
sudo cp ./hypr/input.conf ~/.config/hypr/input.conf

echo "source = ~/.config/hypr/input.conf" >> ~/.config/hypr/hyprland.conf
