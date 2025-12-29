{self, ...}: {
  imports = [
    "${self}/s0mePC-nix/boot/initrd.nix"
    "${self}/s0mePC-nix/boot/kernel.nix"
    "${self}/s0mePC-nix/boot/lanzaboote.nix"
    "${self}/s0mePC-nix/boot/plymouth.nix"
    "${self}/s0mePC-nix/boot/tmp.nix"
    "${self}/s0mePC-nix/boot/loader/systemd-boot.nix"
    "${self}/s0mePC-nix/boot/zfs.nix"

    "${self}/s0mePC-nix/disko/disk.nix"
    "${self}/s0mePC-nix/disko/lvm_vg.nix"

    "${self}/s0mePC-nix/console/console.nix"

    "${self}/s0mePC-nix/environment/systemPackages.nix"
    "${self}/s0mePC-nix/environment/variables.nix"

    "${self}/s0mePC-nix/hardware/amdgpu.nix"
    "${self}/s0mePC-nix/hardware/cpu.nix"
    "${self}/s0mePC-nix/hardware/graphics.nix"
    "${self}/s0mePC-nix/hardware/openrazer.nix"
    "${self}/s0mePC-nix/hardware/qmk.nix"
    "${self}/s0mePC-nix/hardware/zram.nix"

    "${self}/s0mePC-nix/home-manager/users.nix"

    "${self}/s0mePC-nix/i18n/locales.nix"

    "${self}/s0mePC-nix/networking/dhcp.nix"
    "${self}/s0mePC-nix/networking/firewall.nix"
    "${self}/s0mePC-nix/networking/hostname.nix"
    "${self}/s0mePC-nix/networking/networkmanager.nix"
    "${self}/s0mePC-nix/networking/wireguard.nix"
    "${self}/s0mePC-nix/networking/nameservers.nix"
    "${self}/s0mePC-nix/networking/hosts.nix"
    "${self}/s0mePC-nix/networking/hostId.nix"

    "${self}/s0mePC-nix/nix/package.nix"
    "${self}/s0mePC-nix/nix/settings/allowed-users.nix"
    "${self}/s0mePC-nix/nix/settings/experimental-features.nix"
    "${self}/s0mePC-nix/nix/settings/substituters.nix"
    "${self}/s0mePC-nix/nix/settings/trusted-public-keys.nix"
    "${self}/s0mePC-nix/nix/settings/trusted-substituters.nix"
    "${self}/s0mePC-nix/nix/settings/trusted-users.nix"
    "${self}/s0mePC-nix/nix/settings/auto-optimise-store.nix"

    "${self}/s0mePC-nix/nixpkgs/config.nix"
    "${self}/s0mePC-nix/nixpkgs/system.nix"

    "${self}/s0mePC-nix/programs/gamescope.nix"
    "${self}/s0mePC-nix/programs/gamemode.nix"
    "${self}/s0mePC-nix/programs/nh.nix"
    "${self}/s0mePC-nix/programs/steam.nix"
    "${self}/s0mePC-nix/programs/ssh.nix"
    "${self}/s0mePC-nix/programs/yubikey-touch-detector.nix"
    "${self}/s0mePC-nix/programs/nekoray.nix"

    "${self}/s0mePC-nix/security/polkit.nix"
    "${self}/s0mePC-nix/security/rtkit.nix"
    "${self}/s0mePC-nix/security/sudo.nix"
    "${self}/s0mePC-nix/security/sudo-rs.nix"
    "${self}/s0mePC-nix/security/pam/yubico.nix"

    "${self}/s0mePC-nix/services/greetd.nix"
    "${self}/s0mePC-nix/services/libinput.nix"
    "${self}/s0mePC-nix/services/openssh.nix"
    "${self}/s0mePC-nix/services/pipewire.nix"
    "${self}/s0mePC-nix/services/netbird.nix"
    "${self}/s0mePC-nix/services/qmk.nix"
    "${self}/s0mePC-nix/services/scx.nix"
    "${self}/s0mePC-nix/services/xserver.nix"
    "${self}/s0mePC-nix/services/zapret.nix"
    "${self}/s0mePC-nix/services/zerotier.nix"
    "${self}/s0mePC-nix/services/yggdrasil.nix"
    "${self}/s0mePC-nix/services/sunshine.nix"
    "${self}/s0mePC-nix/services/usbmuxd.nix"
    "${self}/s0mePC-nix/services/irqbalance.nix"
    "${self}/s0mePC-nix/services/yubikey-agent.nix"
    "${self}/s0mePC-nix/services/resolved.nix"

    "${self}/s0mePC-nix/sops/defaults.nix"
    "${self}/s0mePC-nix/sops/secrets.nix"

    "${self}/hand7s/stylix/base16Scheme.nix"
    "${self}/hand7s/stylix/cursor.nix"
    "${self}/hand7s/stylix/defaults.nix"
    "${self}/hand7s/stylix/fonts.nix"
    "${self}/hand7s/stylix/image.nix"

    "${self}/s0mePC-nix/system/name.nix"
    "${self}/s0mePC-nix/system/stateVersion.nix"

    "${self}/s0mePC-nix/systemd/oomd.nix"
    "${self}/s0mePC-nix/systemd/slices/system-slice.nix"
    "${self}/s0mePC-nix/systemd/slices/user-slice.nix"
    "${self}/s0mePC-nix/systemd/slices/root-slice.nix"

    "${self}/s0mePC-nix/time/timeZone.nix"

    "${self}/s0mePC-nix/users/users/hand7s.nix"
    "${self}/s0mePC-nix/users/users/root.nix"
    "${self}/s0mePC-nix/users/mutableUsers.nix"

    "${self}/s0mePC-nix/virtualisation/docker.nix"

    "${self}/s0mePC-nix/xdg/icons.nix"
    "${self}/s0mePC-nix/xdg/mime.nix"
    "${self}/s0mePC-nix/xdg/portal.nix"
  ];
}
