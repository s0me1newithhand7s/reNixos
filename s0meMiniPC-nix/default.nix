{self, ...}: {
    imports = [
        "${self}/s0meMiniPC-nix/boot/initrd.nix"
        "${self}/s0meMiniPC-nix/boot/kernel.nix"
        "${self}/s0meMiniPC-nix/boot/lanzaboote.nix"
        "${self}/s0meMiniPC-nix/boot/plymouth.nix"
        "${self}/s0meMiniPC-nix/boot/tmp.nix"
        "${self}/s0meMiniPC-nix/boot/loader/systemd-boot.nix"
        "${self}/s0meMiniPC-nix/boot/zfs.nix"

        "${self}/s0meMiniPC-nix/disko/disk.nix"
        "${self}/s0meMiniPC-nix/disko/lvm_vg.nix"

        "${self}/s0meMiniPC-nix/console/console.nix"

        "${self}/s0meMiniPC-nix/environment/systemPackages.nix"
        "${self}/s0meMiniPC-nix/environment/variables.nix"

        "${self}/s0meMiniPC-nix/hardware/cpu.nix"
        "${self}/s0meMiniPC-nix/hardware/graphics.nix"
        "${self}/s0meMiniPC-nix/hardware/zram.nix"

        "${self}/s0meMiniPC-nix/home-manager/users.nix"

        "${self}/s0meMiniPC-nix/i18n/locales.nix"

        "${self}/s0meMiniPC-nix/networking/dhcp.nix"
        "${self}/s0meMiniPC-nix/networking/firewall.nix"
        "${self}/s0meMiniPC-nix/networking/hostname.nix"
        "${self}/s0meMiniPC-nix/networking/networkmanager.nix"
        "${self}/s0meMiniPC-nix/networking/wireguard.nix"
        "${self}/s0meMiniPC-nix/networking/nameservers.nix"
        "${self}/s0meMiniPC-nix/networking/hosts.nix"
        "${self}/s0meMiniPC-nix/networking/hostId.nix"
        "${self}/s0meMiniPC-nix/networking/interfaces.nix"

        "${self}/s0meMiniPC-nix/nix/package.nix"
        "${self}/s0meMiniPC-nix/nix/settings/allowed-users.nix"
        "${self}/s0meMiniPC-nix/nix/settings/experimental-features.nix"
        "${self}/s0meMiniPC-nix/nix/settings/substituters.nix"
        "${self}/s0meMiniPC-nix/nix/settings/trusted-public-keys.nix"
        "${self}/s0meMiniPC-nix/nix/settings/trusted-users.nix"
        "${self}/s0meMiniPC-nix/nix/settings/auto-optimise-store.nix"

        "${self}/s0meMiniPC-nix/nixpkgs/config.nix"
        "${self}/s0meMiniPC-nix/nixpkgs/system.nix"

        "${self}/s0meMiniPC-nix/programs/nh.nix"
        "${self}/s0meMiniPC-nix/programs/ssh.nix"

        "${self}/s0meMiniPC-nix/security/polkit.nix"
        "${self}/s0meMiniPC-nix/security/rtkit.nix"
        "${self}/s0meMiniPC-nix/security/sudo.nix"
        "${self}/s0meMiniPC-nix/security/sudo-rs.nix"

        "${self}/s0meMiniPC-nix/services/greetd.nix"
        "${self}/s0meMiniPC-nix/services/libinput.nix"
        "${self}/s0meMiniPC-nix/services/openssh.nix"
        "${self}/s0meMiniPC-nix/services/pipewire.nix"
        "${self}/s0meMiniPC-nix/services/netbird.nix"
        "${self}/s0meMiniPC-nix/services/scx.nix"
        "${self}/s0meMiniPC-nix/services/xserver.nix"
        "${self}/s0meMiniPC-nix/services/zapret.nix"
        "${self}/s0meMiniPC-nix/services/zerotier.nix"
        "${self}/s0meMiniPC-nix/services/usbmuxd.nix"
        "${self}/s0meMiniPC-nix/services/irqbalance.nix"
        "${self}/s0meMiniPC-nix/services/forgejo.nix"
        "${self}/s0meMiniPC-nix/services/privatebin.nix"
        "${self}/s0meMiniPC-nix/services/homepage.nix"
        "${self}/s0meMiniPC-nix/services/zitadel.nix"
        "${self}/s0meMiniPC-nix/sops/defaults.nix"
        "${self}/s0meMiniPC-nix/sops/secrets.nix"

        "${self}/hand7s/stylix/base16Scheme.nix"
        "${self}/hand7s/stylix/cursor.nix"
        "${self}/hand7s/stylix/defaults.nix"
        "${self}/hand7s/stylix/fonts.nix"
        "${self}/hand7s/stylix/image.nix"

        "${self}/s0meMiniPC-nix/system/name.nix"
        "${self}/s0meMiniPC-nix/system/stateVersion.nix"

        "${self}/s0meMiniPC-nix/systemd/oomd.nix"
        "${self}/s0meMiniPC-nix/systemd/slices/system-slice.nix"
        "${self}/s0meMiniPC-nix/systemd/slices/user-slice.nix"
        "${self}/s0meMiniPC-nix/systemd/slices/root-slice.nix"

        "${self}/s0meMiniPC-nix/time/timeZone.nix"

        "${self}/s0meMiniPC-nix/users/users/hand7s.nix"
        "${self}/s0meMiniPC-nix/users/users/root.nix"
        "${self}/s0meMiniPC-nix/users/mutableUsers.nix"

        "${self}/s0meMiniPC-nix/virtualisation/docker.nix"
    ];
}
