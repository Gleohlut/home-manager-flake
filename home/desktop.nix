{ pkgs, lib, host, ... }:
{
  assertions = [{
    assertion = host == "desktop";
    message = "Loaded desktop.nix with wrong host arg.";
  }];

  home.packages = with pkgs; [
    
  ];
}
