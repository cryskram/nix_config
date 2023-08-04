# nix_config

This is my setup for nix-os

## Usage

To use this config of nixos, run the following commands in your terminal

```shell
git clone https://github.com/iamvageesh/nix_config.git
cd nix_config
chmod +x install.sh
./install.sh
```

> Note: The installation script will **only** take the backup of `configuration.nix` file, so if any other configuration files are there, then take their backup manually before running the above scripts

## Things that this config includes

- Fish shell with starship as default shell with some aliases
  - ll -> for `exa` coloured output
  - nixedit -> to open the `configuration.nix` file using vim
  - nixbuild -> to run the `rebuild` command
  - nixupdate -> to update and upgrade nixos
- Google Chrome as the default browser
- Some notable applications and packages
