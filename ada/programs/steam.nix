{pkgs, ...}: {
  programs = {
    steam = {
      enable = true;
      extraCompatPackages = [
        pkgs.proton-ge-bin
      ];

      protontricks = {
        enable = true;
      };
    };
  };
}
