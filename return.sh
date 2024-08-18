sudo tail -n 2 fstab >> /etc/fstab
sudo cp -r ./scripts /usr/local/bin
sudo cp ./hypr/monitors.conf ~/.config/hypr/monitors.conf
sudo cp ./hypr/userprefs.conf ~/.config/hypr/userprefs.conf
paru -Sy --needed - < ./apps.txt

curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install franciscolourenco/done
