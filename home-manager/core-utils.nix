{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
    home.packages = with pkgs; [
    alacritty
    nitch
    neofetch
    unzip
    zsh
    oh-my-zsh
    xdg-utils
    blueman
    gh
    ps
    brightnessctl
    pavucontrol
    resources
    zoxide
    fzf
    zsh-syntax-highlighting
    gvfs
    xfce.thunar
    xfce.thunar-volman
    jq
    p7zip
    gparted
    yad
    screen
# Laptop Battery Management
    powertop
    tlp
    auto-cpufreq
# Screenshots
    grim
    slurp
    #swappy #replaced with hyprshot in hyprland


    xorg.xhost
    lxde.lxsession
    ];
    programs.neovim.enable = true;
}
