{
  inputs,
  lib,
  config,
  pkgs,
  ...
}:{

    powerManagement.enable = true;
    services.tlp.enable = true;
    services.auto-cpufreq.enable = true;
    services.auto-cpufreq.settings = {
    battery = {
    governor = "powersave";
    turbo = "never";
    };
    charger = {
    governor = "performance";
    turbo = "auto";
    };
};
    services.udev.enable = true;
    services.udev.extraRules = ''
    KERNEL=="hidraw*", SUBSYSTEM=="hidraw", MODE="0660", GROUP="users", TAG+="uaccess", TAG+="udev-acl"

    '';

    # powerManagement.powertop.enable = true;
    programs.hyprland.enable = true;

    services.supergfxd.enable = true;

    hardware.logitech.wireless.enable = true;
    hardware.logitech.wireless.enableGraphical = true;
}