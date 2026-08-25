{ config, pkgs, ... }:
{
  imports = [ ./modules/packages-terminal.nix ];

  home.username = "joris";
  home.homeDirectory = "/home/joris";
  home.stateVersion = "25.11";

  programs.home-manager.enable = true;
}