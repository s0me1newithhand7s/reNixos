{pkgs, ...}: {
  services = {
    kdeconnect = {
      package = pkgs.valent;
      indicator = true;
    };
  };
}
