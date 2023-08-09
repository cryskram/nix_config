{ config, pkgs,  ... }:

{
  environment.systemPackages = with pkgs; [
    # some utilities
    vim wget htop neofetch scrcpy nixpkgs-fmt git exa bat neovim

    # applications
    google-chrome
    vscode
    vlc
    obsidian
    spotify
    libreoffice-still
    dynamic-wallpaper
    discord

    # shells
    fish starship

    # theme
    adw-gtk3

    # gnome stuff
    # gnome.gnome-terminal 
    gnome.gnome-tweaks

    # gnome extensions
    gnomeExtensions.dash-to-dock
    gnomeExtensions.custom-accent-colors
    gnomeExtensions.appindicator
    gnomeExtensions.blur-my-shell
    gnomeExtensions.clipboard-indicator
    gnomeExtensions.caffeine

    # fonts
    powerline-fonts
    nerdfonts

    # programming stuff
    nodejs
    python3
  ];


  # exclude gnome some packages
  environment.gnome.excludePackages = with pkgs.gnome; [
    epiphany
    simple-scan
    seahorse
    totem
    yelp
    geary
    gnome-calendar gnome-contacts gnome-software gnome-maps gnome-weather gnome-music
    pkgs.gnome-tour pkgs.gnome-connections
  ];
}

