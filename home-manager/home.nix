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
  steam
  vscode-fhs
  firefox
  xdg-utils
  obsidian
  vesktop # discord, vencord
  spotify
  rclone
  via
  brightnessctl
  pavucontrol
  auto-cpufreq
  libreoffice-fresh
  swappy
  grim
  slurp
  neofetch
  resources
  
  ];
  

  # Enable home-manager and git
  programs.home-manager.enable = true;
  programs.git.enable = true;
  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "23.11";
}
