{pkgs, ...}: {
  environment = {
    systemPackages = with pkgs; [
      # (lib.hiPrio uutils-coreutils-noprefix)
      # unless fix
    ];

    enableAllTerminfo = true;
  };
}
