{
  flake.modules.nixos.display-manager = {
    services.displayManager.gdm.enable = true;
  };
}
