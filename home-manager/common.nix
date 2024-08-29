{
  pkgs,
  config,
  lib,
  self,
  ...
}:
{
  home.packages =
    with pkgs;
    [
    #  (pkgs.callPackage ./pkgs/atuin { })
      atuin

      hexyl
      binutils
      ouch

      procs
      xcp

      socat
      tmux
      nurl
      htop
      hub
      tea
      hyperfine
      jq
      yq-go
      tig
      lazygit
      git-absorb
      delta
      scc
      direnv
      nix-direnv
      fzf
      lsd
      zoxide
      fd
      bat
      moar
      vivid
      ripgrep
      zsh
      less
      bashInteractive
      ncurses
      coreutils
    ];

}
