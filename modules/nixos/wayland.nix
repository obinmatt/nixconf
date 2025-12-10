{
  flake.modules.nixos.wayland = {pkgs, ...}: {
    programs.niri.enable = true;
    programs.xwayland.enable = true;

    security.polkit.enable = true;
    services.gnome.gnome-keyring.enable = true;
    security.pam.services.swaylock = {};

    environment.sessionVariables.NIXOS_OZONE_WL = "1";
    environment.systemPackages = with pkgs; [
      swaynotificationcenter
      xwayland-satellite
      wl-clipboard
    ];
  };
}
