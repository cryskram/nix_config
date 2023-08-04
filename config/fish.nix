{ config, pkgs, ... }:

{
  programs.fish = {
    enable = true;
    shellAliases = {
      nixedit = "sudo vim /etc/nixos/configuration.nix";
      nixbuild = "sudo nixos-rebuild switch";
      nixupdate = "nix-channel --update && sudo nixos-rebuild switch --upgrade";
      ll = "exa --color=always -al --icons";
    };
    interactiveShellInit = ''
      set fish_greeting
      starship init fish | source
    '';
  };
  users.defaultUserShell = pkgs.fish;
  environment.shells = with pkgs; [ fish ];
}
