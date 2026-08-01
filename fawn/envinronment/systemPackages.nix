{pkgs, ...}: {
  environment = {
    systemPackages = with pkgs; [
      attr
      bashInteractive
      bind
      curlFull
      gawk
      getconf
      getent
      gzip
      iproute2
      kmod
      libcap
      libressl
      mkpasswd
      ncurses
      openssh
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
      xz
    ];
  };
}
