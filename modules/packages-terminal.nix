{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    zsh
    # kitty - usa versión del sistema (apt) para compatibilidad con drivers NVIDIA
    jetbrains-mono-nerd-fonts
    zsh-syntax-highlighting
    zsh-autosuggestions
    zsh-autocomplete
  ];

  fonts.fonts = with pkgs; [ jetbrains-mono-nerd-fonts ];
}