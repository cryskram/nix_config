echo "Installing the setup"
echo "This script will take the backup of only configuration.nix file, so if any other configurations are there, then it is advised to take backup of those manually"
read -p "Are you ready to continue? (y/N): " res

if [[ "$res" == "y" || "$res" == "Y" ]]; then
    sudo mv /etc/nixos/configuration.nix /etc/nixos/configuration.nix.backup
    sudo cp configuration.nix /etc/nixos/
    sudo cp -r config/ /etc/nixos/

    read -p "Do you want to rebuild the system? (Y/n): " choice

    if [[ "$choice" == "Y" || "$choice" == "y" ]]; then
        sudo nixos-rebuild switch
    else
        echo "Exiting without rebuilding."
    fi
else
    echo "Run sudo nixos-rebuild switch manually"
fi

# wget -O configuration.nix https://raw.githubusercontent.com/iamvageesh/nix_config/main/configuration.nix

# sudo mv /etc/nixos/configuration.nix /etc/nixos/configuration.nix.backup
# sudo cp configuration.nix /etc/nixos/configuration.nix


