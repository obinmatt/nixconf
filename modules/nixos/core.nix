{
  flake.modules.nixos.core = {pkgs, ...}: {
    # Bootloader.
    boot.loader = {
      grub = {
        enable = true;
        efiSupport = true;
        device = "nodev";
      };
      efi.canTouchEfiVariables = true;
    };
    boot.tmp.cleanOnBoot = true;

    # Networking
    networking.networkmanager.enable = true;
    networking.firewall.allowedTCPPorts = [53];
    networking.firewall.allowedUDPPorts = [53];

    # Set your time zone.
    time.timeZone = "America/Toronto";

    # Select internationalisation properties.
    i18n.defaultLocale = "en_CA.UTF-8";

    # Enable the X11 windowing system.
    services.xserver.enable = true;
    services.xserver.xkb = {
      layout = "us";
      variant = "";
    };

    # Enable CUPS to print documents.
    services.printing.enable = true;

    # Enable sound with pipewire.
    services.pulseaudio.enable = false;
    security.rtkit.enable = true;
    services.pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      jack.enable = true;
    };

    # Install fonts
    fonts.packages = with pkgs; [
      nerd-fonts.jetbrains-mono
      font-awesome
    ];

    # List packages installed in system profile. To search, run:
    # $ nix search wget
    environment.systemPackages = with pkgs; [
      git
      yazi
      lazygit
      firefox
      nodejs_24
      pavucontrol
      nautilus
    ];
  };
}
