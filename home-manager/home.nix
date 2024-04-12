# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  # You can import other home-manager modules here
  imports = [
    # If you want to use home-manager modules from other flakes (such as nix-colors):
    # inputs.nix-colors.homeManagerModule

    # You can also split up your configuration and import pieces of it here:
    ./hyprland.nix
    ./fonts.nix
    ./terminal.nix
    ./languages.nix
  ];

  nixpkgs = {
    config = {
      allowUnfree = true;
      # allowUnfreePredicate = _: true;
    };
  };

  home = {
    username = "evan";
    homeDirectory = "/home/evan";
  };

  # Add stuff for your user as you see fit:
  programs.neovim.enable = true;
  home.packages = with pkgs; [
  nitch
  steam
  vscode-fhs
  firefox
  xdg-utils
  obsidian
  spotify
  rclone
  brightnessctl
  pavucontrol
  auto-cpufreq
  libreoffice-fresh
  swappy
  grim
  slurp
  neofetch
  resources
  powertop
  tlp
  # prismlauncher
  webcord-vencord
  # vesktop
  chromium
  gh
  unzip
  ps
  oh-my-zsh
  quickemu
  cockatrice


  xwayland
  xorg.libX11
  xorg.libXxf86vm
  xorg.libXtst
  gtk3
  gtk3-x11

  blueman
  nwg-look
  libsForQt5.partitionmanager
  #screensharing
  pipewire
  wireplumber
  ];
  

  # Enable home-manager and git
  programs.home-manager.enable = true;
  programs.git.enable = true;
  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";
  gtk = {
    enable = true;
    theme = {
      name = "Gruvbox-Dark-B";

      package = pkgs.gruvbox-gtk-theme;
    };
    iconTheme = {
      name = "gnome-icon-theme";
      package = pkgs.gnome-icon-theme;
    };
  };
  home.enableNixpkgsReleaseCheck=false;
  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "23.11";
}
