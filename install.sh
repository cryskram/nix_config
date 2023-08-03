echo "Installing the setup"

wget -O configuration.nix https://raw.githubusercontent.com/iamvageesh/nix_config/main/configuration.nix

sudo mv /etc/nixos/configuration.nix /etc/nixos/configuration.nix.backup
sudo cp configuration.nix /etc/nixos/configuration.nix

read -p "Do you want to rebuild the system? (Y/n): " choice

if [[ "$choice" == "Y" || "$choice" == "y" ]]; then
    sudo nixos-rebuild switch
else
    echo "Exiting without rebuilding."
fi
