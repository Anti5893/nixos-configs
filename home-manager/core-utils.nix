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
    nvim
    xdg-utils
    blueman
    gh
    ps
    brightnessctl
    pavucontrol
    resources
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
}
programs.neovim.enable = true;