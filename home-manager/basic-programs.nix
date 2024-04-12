{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
    home.packages = with pkgs; [
    firefox
    chromium
    obsidian
    webcord-vencord
    rclone
    spotify
    libreoffice-fresh
    ];
}