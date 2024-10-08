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
    ./languages.nix
    ./core-utils.nix
    ./basic-programs.nix
    ./games.nix
    ./dev.nix
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
  
  home.packages = with pkgs; [
  ];
  

  # Enable home-manager and git
  programs.home-manager.enable = true;
  programs.git.enable = true;
  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";
  home.enableNixpkgsReleaseCheck=false;
  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "24.05";
}
