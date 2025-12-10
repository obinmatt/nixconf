{
  inputs,
  config,
  ...
}: let
  hostName = "personal";
  system = "x86_64-linux";
  stateVersion = "25.05";
in {
  flake.nixosConfigurations.${hostName} = inputs.nixpkgs.lib.nixosSystem {
    inherit system;
    specialArgs = {inherit inputs;};
    modules = with config.flake.modules.nixos;
      [
        nh
        nix
        core
        users
        nvidia
        gaming
        wayland
        home-manager
        display-manager
        personal-hardware
      ]
      ++ [
        {
          home-manager.users.obin = {
            imports = with config.flake.modules.homeManager; [
              core
              niri
              shell
              waybar
              wayland
              ghostty
            ];
            home = {
              packages = [
                inputs.neovim-flake.packages.${system}.neovim-flake
                inputs.awww.packages.${system}.awww
              ];
              inherit stateVersion;
            };
          };
        }
      ]
      ++ [
        {
          networking = {inherit hostName;};
          system = {inherit stateVersion;};
        }
      ];
  };
}
