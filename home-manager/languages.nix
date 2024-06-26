{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
    home.packages = with pkgs; [
        docker
        sonar-scanner-cli
        # Java
        graalvm-ce
        maven
        # Python
        python3
        # Rust
        rustup
        # JS
        nodejs_20
        nodePackages."@angular/cli"
        # .net
        dotnet-runtime_7
    ];
  # programs.java.enable = true;
  home.file."jdks/openjdk8".source = pkgs.jdk8;
  home.file."jdks/openjdk19".source = pkgs.jdk19;
  home.file."jdks/openjdk21".source = pkgs.jdk21;
  home.file."jdks/zulu".source = pkgs.zulu;
}