{
  flake.modules.nixos.users = {pkgs, ...}: {
    programs.zsh.enable = true;
    users.users.obin = {
      isNormalUser = true;
      description = "obin";
      extraGroups = ["networkmanager" "wheel"];
      shell = pkgs.zsh;
    };
  };
}
