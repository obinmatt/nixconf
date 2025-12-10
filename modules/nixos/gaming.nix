{
  flake.modules.nixos.gaming = {pkgs, ...}: {
    programs.steam.enable = true;
    programs.steam.remotePlay.openFirewall = true;
    programs.steam.extraCompatPackages = [pkgs.proton-ge-bin];
    programs.gamemode.enable = true;

    environment.systemPackages = with pkgs; [
      vesktop
      bottles
      mangohud
      r2modman
      parsec-bin
    ];
  };
}
