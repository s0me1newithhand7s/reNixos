{pkgs, ...}: {
  home = {
    packages = with pkgs; [
      fd
      gh
      sd
      xh
      dua
      nvd
      dust
      sops
      rsync
      procs
      sbctl
      gping
      comma
      trippy
      bottom
      ragenix
      ripgrep
      kubectl
      gitoxide
      deploy-rs
      btop-rocm
      bubblewrap
      ripgrep-all
      nixos-anywhere
      wireguard-tools
      nix-output-monitor
    ];
  };
}
