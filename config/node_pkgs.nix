{ config, pkgs, ... }:

{
	environment.systemPackages = with pkgs.nodePackages; [
		gitmoji-cli
	];
}
