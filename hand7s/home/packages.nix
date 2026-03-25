{pkgs, ...}: {
  home = {
    packages = with pkgs; [
      fd
      gh
      sd
      xh
      dua
      nvd
      tlrc
      dust
      sops
      rsync
      procs
      sshfs
      sbctl
      gping
      comma
      trippy
      bottom
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
