{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
    home.packages = with pkgs; [
        docker
        # Java
        jdk
        maven
        # Python
        python3
        # Rust
        rustup
        # JS
        nodejs_20
        # .net
        dotnet-runtime_7
    ];
  # programs.java.enable = true;

}