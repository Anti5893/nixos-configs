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
    ];
    programs.zsh.enable = true;
    users.defaultUserShell = pkgs.zsh;
    programs.zsh.promptInit = "source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
}