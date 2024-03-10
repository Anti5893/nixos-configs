{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
    home.packages = with pkgs; [
        zsh
        zoxide
    ];
}