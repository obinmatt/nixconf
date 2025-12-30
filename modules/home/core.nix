{
  flake.modules.homeManager.core = {pkgs, ...}: {
    home.sessionVariables = {
      EDITOR = "nvim";
      PAGER = "less";
      CLICOLOR = "1";
    };
  };
}
