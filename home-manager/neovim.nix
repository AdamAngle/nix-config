{ pkgs, flake, ... }: {
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    defaultEditor = true;
    # package = flake.inputs.neovim-nightly-overlay.packages.${pkgs.system}.default;
    extraLuaPackages = luaPkgs: with luaPkgs; [ fzf-lua ];
  };
}
