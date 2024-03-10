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
        fzf
        zsh-syntax-highlighting
        yazi
        jq
    ];
}