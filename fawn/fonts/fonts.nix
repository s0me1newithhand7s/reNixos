{pkgs, ...}: {
  fonts = {
    fontconfig = {
      enable = true;
    };

    packages = with pkgs; [
      nerd-fonts.monaspace
      nerd-fonts.noto
      nerd-fonts.iosevka-term-slab
      dejavu_fonts
      freefont_ttf
      gyre-fonts
      liberation-fonts
      unifont
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
    ];
  };
}
