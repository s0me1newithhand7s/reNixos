{self, ...}: {
  imports = [
    "${self}/viola/boot/initrd.nix"
    "${self}/viola/boot/kernel.nix"
    "${self}/viola/boot/lanzaboote.nix"
    "${self}/viola/boot/plymouth.nix"
    "${self}/viola/boot/tmp.nix"
    "${self}/viola/boot/loader/systemd-boot.nix"

    "${self}/viola/disko/disk.nix"
    "${self}/viola/disko/lvm_vg.nix"

    "${self}/viola/console/console.nix"

    "${self}/viola/environment/systemPackages.nix"
    "${self}/viola/environment/variables.nix"

    "${self}/viola/hardware/cpu.nix"
    "${self}/viola/hardware/graphics.nix"
    "${self}/viola/hardware/zram.nix"

    "${self}/viola/home-manager/users.nix"

    "${self}/viola/i18n/locales.nix"

    "${self}/viola/networking/dhcp.nix"
    "${self}/viola/networking/firewall.nix"
    "${self}/viola/networking/hostname.nix"
    "${self}/viola/networking/networkmanager.nix"
    "${self}/viola/networking/wireguard.nix"
    "${self}/viola/networking/nameservers.nix"
    "${self}/viola/networking/hosts.nix"
    "${self}/viola/networking/hostId.nix"
    "${self}/viola/networking/interfaces.nix"

    "${self}/viola/nix/package.nix"
    "${self}/viola/nix/settings/allowed-users.nix"
    "${self}/viola/nix/settings/experimental-features.nix"
    "${self}/viola/nix/settings/substituters.nix"
    "${self}/viola/nix/settings/trusted-public-keys.nix"
    "${self}/viola/nix/settings/trusted-users.nix"
    "${self}/viola/nix/settings/auto-optimise-store.nix"

    "${self}/viola/nixpkgs/config.nix"
    "${self}/viola/nixpkgs/system.nix"

    "${self}/viola/programs/nh.nix"
    "${self}/viola/programs/ssh.nix"

    "${self}/viola/security/polkit.nix"
    "${self}/viola/security/rtkit.nix"
    "${self}/viola/security/sudo.nix"
    "${self}/viola/security/sudo-rs.nix"

    "${self}/viola/services/greetd.nix"
    "${self}/viola/services/libinput.nix"
    "${self}/viola/services/openssh.nix"
    "${self}/viola/services/pipewire.nix"
    "${self}/viola/services/netbird.nix"
    "${self}/viola/services/scx.nix"
    "${self}/viola/services/xserver.nix"
    "${self}/viola/services/usbmuxd.nix"
    "${self}/viola/services/irqbalance.nix"
    "${self}/viola/services/forgejo.nix"
    "${self}/viola/services/postgresql.nix"
    "${self}/viola/services/vaultwarden.nix"
    "${self}/viola/services/privatebin.nix"
    "${self}/viola/services/woodpecker.nix"
    "${self}/viola/services/stalwart.nix"
    "${self}/viola/services/homepage.nix"
    "${self}/viola/services/redis.nix"
    "${self}/viola/services/zitadel.nix"
    "${self}/viola/services/garage.nix"

    "${self}/viola/sops/defaults.nix"
    "${self}/viola/sops/secrets.nix"

    "${self}/hand7s/stylix/base16Scheme.nix"
    "${self}/hand7s/stylix/cursor.nix"
    "${self}/hand7s/stylix/defaults.nix"
    "${self}/hand7s/stylix/fonts.nix"
    "${self}/hand7s/stylix/image.nix"

    "${self}/viola/system/name.nix"
    "${self}/viola/system/stateVersion.nix"

    "${self}/viola/systemd/oomd.nix"
    "${self}/viola/systemd/slices/system-slice.nix"
    "${self}/viola/systemd/slices/user-slice.nix"
    "${self}/viola/systemd/slices/root-slice.nix"

    "${self}/viola/time/timeZone.nix"

    "${self}/viola/users/users/hand7s.nix"
    "${self}/viola/users/users/root.nix"
    "${self}/viola/users/mutableUsers.nix"

    "${self}/viola/virtualisation/docker.nix"
  ];
}
