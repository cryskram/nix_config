# nix_config

This is my setup for nix-os

## Usage

To use this config of nixos, run the following commands in your terminal

```shell
$ wget -O install.sh https://raw.githubusercontent.com/iamvageesh/nix_config/v0.0.3/install.sh
$ chmod +x install.sh
$ ./install.sh
```

Or you can even do this manually by cloning this repository and then copying the configuration files to the system

```shell
$ sudo mv /etc/nixos/configuration.nix /etc/nixos/configuration.nix.backup # taking the backup of your configuration
$ git clone https://github.com/iamvageesh/nix_config.git
$ cd nix_config
$ sudo cp configuration.nix /etc/nixos/
$ sudo nixos-rebuild switch
```

## Things that this config includes

- Fish shell with starship as default shell with some aliases
  - ll -> for `exa` coloured output
  - nixedit -> to open the `configuration.nix` file using vim
  - nixbuild -> to run the `rebuild` command
  - nixupdate -> to update and upgrade nixos
- Google Chrome as the default browser
- Some notable applications and packages
