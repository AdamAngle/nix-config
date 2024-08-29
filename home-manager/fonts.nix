{pkgs, ...}: {
  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
    (nerdfonts.override {
      fonts = [
        "FiraCode"
        "FiraMono"
        "Ubuntu"
        "UbuntuMono"
        "CascadiaCode"
        "Iosevka"
        "IosevkaTerm"
        "IntelOneMono"
        "JetBrainsMono"
        "Hack"
        "Go-Mono"
        "iA-Writer"
        "Meslo"
        "Inconsolata"
        "InconsolataGo"
        "InconsolataLGC"
      ];
    })
    iosevka
    iosevka-comfy.comfy
    iosevka-comfy.comfy-wide
    iosevka-comfy.comfy-motion
    iosevka-comfy.comfy-wide-motion
    inconsolata
    meslo-lg
    fira
    fira-go
  ];
}
