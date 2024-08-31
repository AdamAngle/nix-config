{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    lshw
    tmux
    brave
    make
];
}
