{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
    home.packages = with pkgs; [
    vscode-fhs
    git
    hardinfo
    wget
    dart-sass
    tailwindcss
    ];
}