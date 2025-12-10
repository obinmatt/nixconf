{
  flake.modules.homeManager.waybar = {
    programs.waybar = {
      enable = true;
      settings = {
        mainbar = {
          height = 18;
          position = "top";
          modules-left = ["niri/workspaces"];
          modules-center = ["clock"];
          modules-right = ["cpu" "memory" "pulseaudio"];
          "niri/workspaces" = {
            format = "{icon}";
            on-click = "activate";
            sort-by-number = true;
          };
          clock = {
            timezone = "America/Toronto";
            format = "{:%H:%M  |  %a %b %d}";
            tooltop = false;
          };
          cpu = {
            format = " {usage}%";
            tooltip = false;
          };
          memory = {
            format = " {percentage}%";
            tooltip = false;
          };
          pulseaudio = {
            format = "{icon} {volume}%";
            format-muted = "";
            format-icons = {
              default = ["" "" ""];
            };
            on-click = "pavucontrol";
            tooltip = false;
          };
        };
      };
      style = builtins.readFile ./style.css;
    };
  };
}
