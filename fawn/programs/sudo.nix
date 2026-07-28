{pkgs, ...}: {
  programs = {
    sudo = {
      enable = true;
      package = pkgs.sudo-rs;
    };
  };
}
