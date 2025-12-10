{
  description = "NixOS configuration flake";

  inputs = {
    # rely mostly on stable, include unstable in-case
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixpkgs-unstable";

    # flake tools
    import-tree.url = "github:vic/import-tree";
    systems.url = "github:nix-systems/default-linux";
    flake-parts.url = "github:hercules-ci/flake-parts";
    flake-parts.inputs.nixpkgs-lib.follows = "nixpkgs";

    # home-manager
    home-manager.url = "github:nix-community/home-manager/release-25.11";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    # neovim config
    neovim-flake.url = "github:obinmatt/neovim-flake";
    neovim-flake.inputs.nixpkgs.follows = "nixpkgs-unstable";

    # awww wallpaper daemon
    awww.url = "git+https://codeberg.org/LGFae/awww";
  };

  outputs = inputs:
    inputs.flake-parts.lib.mkFlake {inherit inputs;}
    (inputs.import-tree ./modules);
}
