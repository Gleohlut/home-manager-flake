{ config, lib, pkgs, ... }:
{
  services.syncthing = {
    enable = true;
    tray.enable = true;
    extraOptions = [ "--allow-newer-config" ];
  };
}
