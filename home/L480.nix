{ pkgs, lib, host, ... }:
{
  imports = [
    ../modules/zsh.nix
    ../modules/syncthing.nix
    ../modules/obsidian.nix
    ../modules/firefox.nix
  ];
  assertions = [{
    assertion = host == "L480";
    message = "Loaded L480.nix with wrong host arg.";
  }];

  # Laptop-only examples
  home.packages = with pkgs; [
    qbittorrent discord spotify
  ];
  home.sessionVariables = {
  DISCORD_DISABLE_QUIC = "1";
};
}
