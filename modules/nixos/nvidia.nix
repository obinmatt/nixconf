{
  flake.modules.nixos.nvidia = {
    services.xserver.videoDrivers = ["nvidia"];
    virtualisation.docker.enable = true;
    hardware = {
      graphics.enable = true;
      graphics.enable32Bit = true;
      nvidia-container-toolkit.enable = true;
      nvidia.modesetting.enable = true;
      nvidia.open = false;
    };
  };
}
