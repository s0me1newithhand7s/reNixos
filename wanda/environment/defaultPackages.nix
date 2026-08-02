{pkgs, ...}: {
  environment = {
    defaultPackages = with pkgs; [
      bind
      curlFull
      gzip
      iproute2
      kmod
      openssh
      xz
    ];
  };
}
