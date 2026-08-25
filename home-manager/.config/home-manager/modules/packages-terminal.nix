{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    zsh
    kitty
    jetbrains-mono-nerd-fonts
    zsh-syntax-highlighting
    zsh-autosuggestions
    zsh-autocomplete
  ];
}
