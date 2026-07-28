{
  pkgs,
  lib,
  ...
}: {
  environment = {
    systemPackages = with pkgs;
      lib.mkForce [
        kdb
        attr
        bzip
        cpio
        curl
        getent
        getconf
        gzip
        xz
        less
        libcap
        ncurses
        libressl
        mkpasswd
        shadow
        time
        zstd
        bashInteractive
        gawk
        gnugrep
        kmod
        systemd-tmpfiles
        glibc-locales
        finit
        finix-logo
        uutils-acl
        uutils-coreutils-uutils-coreutils-noprefix
        uutils-findutils
        uutils-diffutils
        uutils-procps
        uutils-sed
        uutils-tar
        uutils-util-linux
      ];
  };
}
