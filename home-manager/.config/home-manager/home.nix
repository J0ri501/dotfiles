{ config, pkgs, ... }:

{
  # Configuración de usuario
  home.username = "joris";
  home.homeDirectory = "/home/joris";

  # Versión de estado - NO cambiar
  home.stateVersion = "25.11";

  # Paquetes a instalar
  # Para agregar más, solo agregalos a esta lista:
  #   pkgs.nombre-del-paquete
  #
  # Buscar paquetes: https://search.nixos.org/packages
  home.packages = with pkgs; [
    # Editor de texto
    emacs
    neovim
    nodejs_24
  ];

  # Variables de entorno
  home.sessionVariables = {
    # EDITOR = "emacs";
    # VISUAL = "emacs";
  };

  # Habilitar home-manager
  programs.home-manager.enable = true;
}

#--

#+
