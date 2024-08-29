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
      ouch
      
      clang
      rustc
      cargo
      go
      python3

      procs
      xcp

      neofetch
      unzip
      socat
      less
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
