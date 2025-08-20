{ pkgs, ... }:
{
  home.packages = with pkgs; [
    libreoffice-fresh
    vlc
  ];

  # Make Neovim default editor
  home.sessionVariables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
  };
}

