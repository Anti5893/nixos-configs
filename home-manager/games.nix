{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
    home.packages = with pkgs; [
    steam
    cockatrice
    prismlauncher
    protontricks
    gnome.zenity
    ];
}