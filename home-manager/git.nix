{
  config,
  pkgs,
  lib,
  flake,
  ...
}: let
  home = config.home.homeDirectory;
in {
  # home.packages = with pkgs; [
  #   git-lfs
  # ];

  # Git
  # https://rycee.gitlab.io/home-manager/options.html#opt-programs.git.enable
  # Aliases config in ./configs/git-aliases.nix
  programs.git = {
    enable = true;
    # parameterize this at some point
    userName = "Jasmine Angle";
    userEmail = "jasmine@angle.dev";
    extraConfig = {
      diff.colorMoved = "default";
      pull.rebase = true;
    };

    ignores = [".DS_Store" "*~" "*.swp"];
    includes = [];

    aliases = {};
    signing = {
      key = "${home}/.ssh/id_ed25519.pub";
      signByDefault = true;
      gpgPath = "";
    };
    extraConfig = {
      init = {defaultBranch = "main";};
      gpg = {format = "ssh";};
      core.editor = "nvim";
      credential.helper = "store --file ${home}/.git-credentials";
    };
    # Enhanced diffs
    delta = {
      enable = true;
      options = {
        features = "coracias-caudatus";
        navigate = true;
        light = false;
        side-by-side = true;
      };
    };

    lfs.enable = true;
  };
}
