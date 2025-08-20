{
  description = "HM on Arch (flake, modular)";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { nixpkgs, home-manager, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { 
      inherit system;
      config = { allowUnfree = true; };
      };
      mkUser = host: home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        extraSpecialArgs = { inherit host; };
        modules = [
          ./home.nix           # common
          (./home/${host}.nix) # host-specific
          {
            home.username = "wumingshi";
            home.homeDirectory = "/home/wumingshi";
            home.stateVersion = "25.05";
            programs.home-manager.enable = true;
          }
        ];
      };
    in {
      homeConfigurations = {
        "wumingshi-L480"    = mkUser "L480";
        "wumingshi-desktop" = mkUser "desktop";
      };
    };
}
