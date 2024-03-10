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
  ];
  

  # Enable home-manager and git
  programs.home-manager.enable = true;
  programs.git.enable = true;
  programs.steam = {
      enable = true;
      remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
      dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    };
    programs.zsh.enable = true;
      users.defaultUserShell = pkgs.zsh;
      programs.zsh.promptInit = "source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "23.11";
}
