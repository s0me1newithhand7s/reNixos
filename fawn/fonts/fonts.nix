{pkgs, ...}: {
  fonts = {
    fontconfig = {
      enable = true;
    };

    packages = with pkgs; [
      nerd-fonts.monaspace
      nerd-fonts.noto
    ];
  };
}
