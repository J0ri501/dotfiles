{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    zsh
    kitty
    nerd-fonts.jetbrains-mono
    zsh-syntax-highlighting
    zsh-autosuggestions
    zsh-autocomplete
  ];
}
