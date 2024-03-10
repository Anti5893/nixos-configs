{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
    home.packages = with pkgs; [
        wayland
        hyprland
        waybar
        alacritty
        rofi-wayland
    ];
}