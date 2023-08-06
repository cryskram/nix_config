{ config, pkg, ... }:

{
  imports = [
    ./apps.nix
    ./fish.nix
    ./locale.nix
    ./services.nix
    ./delete.nix
  ];
}
