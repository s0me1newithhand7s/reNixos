{
  pkgs,
  lib,
  ...
}: {
  home = {
    shellAliases = {
      e = "${lib.getExe pkgs.eza}";
      et = "${lib.getExe pkgs.eza} -T";
      k = "${lib.getExe pkgs.kubectl}";
    };
  };
}
