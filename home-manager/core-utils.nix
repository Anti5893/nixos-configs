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
    yazi
    gvfs
    xfce.thunar
    xfce.thunar-volman
    jq
    p7zip
    gparted
# Laptop Battery Management
    powertop
    tlp
    auto-cpufreq
#screensharing
    pipewire    
    wireplumber
    xwaylandvideobridge
# Screenshots
    swappy
    grim
    slurp


    xorg.xhost
    lxde.lxsession
    ];
    programs.neovim.enable = true;
}
