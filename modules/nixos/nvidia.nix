{
  flake.modules.nixos.nvidia = {
    services.xserver.videoDrivers = ["nvidia"];
    hardware = {
      graphics.enable = true;
      graphics.enable32Bit = true;
      nvidia-container-toolkit.enable = true;
      nvidia.modesetting.enable = true;
      nvidia.open = true;
    };
  };
}
