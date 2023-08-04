{config, pkgs, ...}:

{
  # xserver settings
  services.xserver = {
    enable = true;
    layout = "us";
    xkbVariant = "";
    excludePackages = [ pkgs.xterm ];
    desktopManager = {
      gnome.enable = true;
    };
    displayManager = {
      gdm.enable = true;
    };
    libinput.enable = true;
  };

  # audio settings
  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # for jack support
    # jack.enable = true;
  };

  # printing
  # services.printing.enable = true;
}
