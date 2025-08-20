{ config, lib, pkgs, ... }:
{
programs.firefox = {
  enable = true;

  profiles = {
    Personal = {
      id = 0;
      isDefault = true;
      name = "Personal";
      search = {
        force = true;
        default = "DuckDuckGo";
        privateDefault = "DuckDuckGo";
      };
      settings = {
        "browser.startup.homepage" = "https://start.duckduckgo.com";
        "privacy.resistFingerprinting" = true;
        "browser.shell.checkDefaultBrowser" = false;
      };
    };

    Work = {
      id = 1;
      isDefault = false;
      name = "Work";
      search = {
        force = true;
        default = "DuckDuckGo";
        privateDefault = "DuckDuckGo";
      };
      settings = {
        "browser.startup.homepage" = "https://start.duckduckgo.com";
        "privacy.resistFingerprinting" = true;
        "browser.shell.checkDefaultBrowser" = false;
      };
    };
  };
};
}
