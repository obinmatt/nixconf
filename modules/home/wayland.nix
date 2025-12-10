{
  flake.modules.homeManager.wayland = {pkgs, ...}: {
    programs.fuzzel.enable = true;
    programs.fuzzel.settings.colors = {
      background = "#1e2124ff";
      border = "#5ea1ffff";
      text = "#ffffffff";
      selection = "#3c4048ff";
      selection-text = "#ffffffff";
      selection-match = "#f1ff5eff";
      match = "#f1ff5eff";
    };

    programs.swaylock.enable = true;
    programs.swaylock.settings = {
      daemonize = true;
      image = ./wallpaper.png;
    };
    services.swaync.enable = true;
  };
}
