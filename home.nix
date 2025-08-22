{ pkgs, ... }:
{
  home.packages = with pkgs; [
    libreoffice-fresh
    vlc
  ];
  programs.feh.enable = true;

  # Make Neovim default editor
  home.sessionVariables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
  };
}

