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

        hypridle
        hyprlock
        hyprdim
        hyprpicker
        hyprshot
        
        waybar
        alacritty
        rofi-wayland

        nwg-displays
    ];
}