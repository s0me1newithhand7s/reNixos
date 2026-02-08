{pkgs, ...}: {
  environment = {
    systemPackages = [
      pkgs.helix
      pkgs.comma
    ];

    enableAllTerminfo = true;
  };
}
