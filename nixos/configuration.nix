# This is your system's configuration file.
# Use this to configure your system environment (it replaces /etc/nixos/configuration.nix)
{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  # You can import other NixOS modules here
  imports = [
    inputs.hardware.nixosModules.asus-zephyrus-ga402x.nvidia

    # You can also split up your configuration and import pieces of it here:
    # ./users.nix

    # Import your generated (nixos-generate-config) hardware configuration
    ./hardware-configuration.nix
    ./load-homemanager.nix
  ];

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  # This will add each flake input as a registry
  # To make nix3 commands consistent with your flake
  nix.registry = (lib.mapAttrs (_: flake: {inherit flake;})) ((lib.filterAttrs (_: lib.isType "flake")) inputs);

  # This will additionally add your inputs to the system's legacy channels
  # Making legacy nix commands consistent as well, awesome!
  nix.nixPath = ["/etc/nix/path"];
  environment.etc =
    lib.mapAttrs'
    (name: value: {
      name = "nix/path/${name}";
      value.source = value.flake;
    })
    config.nix.registry;

  nix.settings = {
    # Enable flakes and new 'nix' command
    experimental-features = "nix-command flakes";
    # Deduplicate and optimize nix store
    auto-optimise-store = true;
  };
  networking.networkmanager.enable = true;
  networking.hostName = "evan-nixos";

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # TODO: Configure your system-wide user settings (groups, etc), add more users as needed.
  users.users.evan = {
    isNormalUser = true;
    description = "Evan Savage";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [ # in case of home-manager fail
    git
    vscode-fhs
    firefox
    wayland
    hyprland
    waybar
    alacritty
    rofi-wayland
    ];
  
  services.getty.autologinUser = "evan";
  
  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  system.stateVersion = "23.11";
}
