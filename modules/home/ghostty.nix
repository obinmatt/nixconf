{
  flake.modules.homeManager.ghostty = {
    programs.ghostty = {
      enable = true;
      settings = {
        theme = "cyberdream";
        background-opacity = 0.9;
        window-padding-x = 12;
        window-padding-y = 12;
      };
      themes = {
        cyberdream = {
          background = "#16181a";
          cursor-color = "#ffffff";
          foreground = "#ffffff";
          palette = [
            "0=#16181a"
            "1=#ff6e5e"
            "2=#5eff6c"
            "3=#f1ff5e"
            "4=#5ea1ff"
            "5=#bd5eff"
            "6=#5ef1ff"
            "7=#ffffff"
            "8=#3c4048"
            "9=#ff6e5e"
            "10=#5eff6c"
            "11=#f1ff5e"
            "12=#5ea1ff"
            "13=#bd5eff"
            "14=#5ef1ff"
            "15=#ffffff"
          ];
          selection-background = "#3c4048";
          selection-foreground = "#ffffff";
        };
      };
    };
  };
}
