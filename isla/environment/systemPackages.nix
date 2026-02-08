{
  pkgs,
  lib,
  ...
}: {
  environment = {
    systemPackages = with pkgs; [
      (lib.hiPrio uutils-coreutils-noprefix)
      xdg-desktop-portal-wlr
      xdg-desktop-portal-gtk
      xdg-desktop-portal
      uutils-findutils
      uutils-diffutils
      home-manager
    ];
  };
}
