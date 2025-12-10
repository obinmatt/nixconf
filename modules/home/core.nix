{
  flake.modules.homeManager.core = {pkgs, ...}: {
    home.pointerCursor = {
      gtk.enable = true;
      x11.enable = true;
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 24;
    };

    home.sessionVariables = {
      EDITOR = "nvim";
      PAGER = "less";
      CLICOLOR = "1";
    };
  };
}
