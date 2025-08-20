{ config, lib, pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    autosuggestion = {
      enable = true;
      };
    syntaxHighlighting.enable = true;
    history.size = 10000;
    shellAliases = {
      ll = "ls -alF";
    };
    initContent = "
    PROMPT='%~ % '

    if uwsm check may-start; then
      exec uwsm start hyprland-uwsm.desktop
    fi
    ";
    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [ "git" "zoxide" ];
    };
  };
}
