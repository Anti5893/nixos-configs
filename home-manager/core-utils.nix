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
# Laptop Battery Management
    powertop
    tlp
    auto-cpufreq
#screensharing
    pipewire    
    wireplumber
# Screenshots
    swappy
    grim
    slurp
    ];
    programs.neovim.enable = true;
}
