{pkgs, ...}: {
  programs = {
    coreutils = {
      package = pkgs.uutils-coreutils-noprefix;
    };
  };
}
