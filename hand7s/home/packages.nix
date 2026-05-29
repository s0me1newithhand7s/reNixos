{pkgs, ...}: {
  home = {
    packages = with pkgs; [
      gh
      sd
      xh
      viu
      tdf
      epr
      dua
      nvd
      dust
      ouch
      sops
      grex
      rsync
      hexyl
      procs
      sshfs
      sbctl
      gping
      comma
      kubectl
      gitoxide
      step-cli
      hyperfine
      deploy-rs
      btop-rocm
      bubblewrap
      microfetch
      nixos-anywhere
      wireguard-tools
      nix-output-monitor

      (
        pkgs.writeShellApplication {
          name = "safe-open";
          runtimeInputs = with pkgs; [
            cryptsetup
            btrfs-progs
            uutils-coreutils-noprefix
          ];

          text = ''
            if [ "$(id -u)" -ne 0 ]; then
              printf "use sudo;" >&2
              exit 1
            fi

            if [ ! -b /dev/sda ]; then
              echo "no safe;" >&2
              exit 1
            fi

            cryptsetup luksOpen /dev/sda test_safe
            mkdir -p /tmp/pico_safe
            mount -o compress=zstd:3,noatime,ssd /dev/mapper/test_safe /tmp/pico_safe
            chown -R :wheel /tmp/pico_safe

            exit 0
          '';
        }
      )

      (
        pkgs.writeShellApplication {
          name = "safe-close";
          runtimeInputs = with pkgs; [
            cryptsetup
            btrfs-progs
            uutils-coreutils-noprefix
            uutils-util-linux
          ];

          text = ''
            if [ "$(id -u)" -ne 0 ]; then
              printf "use sudo;" >&2
              exit 1
            fi

            if mountpoint -q /tmp/pico_safe; then
              umount /tmp/pico_safe
              printf "umounted"
            fi

            if [ -b /dev/mapper/test_safe ]; then
              cryptsetup luksClose test_safe
              exit 0
            else
              echo "no safe!"
            fi

            exit 0
          '';
        }
      )
    ];
  };
}
