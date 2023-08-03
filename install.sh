echo "Installing the setup"
wget -O configuration.nix https://raw.githubusercontent.com/iamvageesh/nix_config/main/configuration.nix
sudo mv /etc/nixos/configuration.nix /etc/nixos/configuration.nix.backup
sudo cp configuration.nix /etc/nixos/configuration.nix
