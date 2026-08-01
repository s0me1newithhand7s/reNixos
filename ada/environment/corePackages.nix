{
  pkgs,
  lib,
  ...
}: {
  environment = {
    corePackages = with pkgs;
      lib.mkForce [
        attr
        bashInteractive
        gawk
        getconf
        getent
        libcap
        libressl
        mkpasswd
        ncurses
        patch
        shadow
        su
        util-linux
        uutils-acl
        uutils-coreutils-noprefix
        uutils-findutils
        uutils-hostname
        uutils-procps
        uutils-sed
        uutils-tar
      ];
  };
}
