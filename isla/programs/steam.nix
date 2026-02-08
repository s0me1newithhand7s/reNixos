{pkgs, ...}: {
  programs = {
    steam = {
      enable = true;
      extraCompatPackages = [
        pkgs.proton-ge-bin
      ];

      remotePlay = {
        openFirewall = true;
      };

      localNetworkGameTransfers = {
        openFirewall = true;
      };

      protontricks = {
        enable = true;
      };
    };
  };
}
