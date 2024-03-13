{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
    home.packages = with pkgs; [
        # Java
        # jdk
        # temurin-jre-bin
        # temurin-jre-bin-8
        # temurin-jre-bin-17
        maven
        # Python
        python3
        # Rust
        rustup
        # JS
        nodejs_20

    ];
}