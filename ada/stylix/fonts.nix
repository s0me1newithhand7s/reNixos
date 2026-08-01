{pkgs, ...}: {
  stylix = {
    fonts = {
      sizes = {
        applications = 10;
        desktop = 9;
        popups = 9;
        terminal = 10;
      };

      monospace = {
        package = pkgs.nerd-fonts.monaspace;
        name = "Monospace Aether Nerd Font";
      };

      emoji = {
        package = pkgs.noto-fonts-color-emoji;
        name = "Noto Color Emoji";
      };

      sansSerif = {
        package = pkgs.nerd-fonts.iosevka-term-slab;
        name = "Iosevka Term Slab Nerd Font";
      };

      serif = {
        package = pkgs.nerd-fonts.noto;
        name = "Noto Serif Nerd Font";
      };
    };
  };
}
