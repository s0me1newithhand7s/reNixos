{self, ...}: {
  imports = [
    "${self}/s0melapt0p-nix/disko/disk.nix"
    "${self}/s0melapt0p-nix/disko/lvm_vg.nix"

    "${self}/s0melapt0p-nix/boot/loader/system-boot.nix"
    "${self}/s0melapt0p-nix/boot/lanzaboote.nix"
    "${self}/s0melapt0p-nix/boot/initrd.nix"
    "${self}/s0melapt0p-nix/boot/kernel.nix"
    "${self}/s0melapt0p-nix/boot/plymouth.nix"
    "${self}/s0melapt0p-nix/boot/tmp.nix"

    "${self}/s0melapt0p-nix/console/console.nix"

    "${self}/s0melapt0p-nix/environment/systemPackages.nix"
    "${self}/s0melapt0p-nix/environment/variables.nix"

    "${self}/s0melapt0p-nix/hardware/cpu.nix"
    "${self}/s0melapt0p-nix/hardware/graphics.nix"
    "${self}/s0melapt0p-nix/hardware/qmk.nix"
    "${self}/s0melapt0p-nix/hardware/zram.nix"

    "${self}/s0melapt0p-nix/home-manager/users.nix"

    "${self}/s0melapt0p-nix/i18n/locales.nix"

    "${self}/s0melapt0p-nix/networking/dhcp.nix"
    "${self}/s0melapt0p-nix/networking/firewall.nix"
    "${self}/s0melapt0p-nix/networking/hostname.nix"
    "${self}/s0melapt0p-nix/networking/networkmanager.nix"
    "${self}/s0melapt0p-nix/networking/wireguard.nix"
    "${self}/s0melapt0p-nix/networking/nameservers.nix"
    "${self}/s0melapt0p-nix/networking/hosts.nix"
    "${self}/s0melapt0p-nix/networking/hostId.nix"

    "${self}/s0melapt0p-nix/nix/package.nix"
    "${self}/s0melapt0p-nix/nix/settings/allowed-users.nix"
    "${self}/s0melapt0p-nix/nix/settings/experimental-features.nix"
    "${self}/s0melapt0p-nix/nix/settings/substituters.nix"
    "${self}/s0melapt0p-nix/nix/settings/trusted-public-keys.nix"
    "${self}/s0melapt0p-nix/nix/settings/trusted-users.nix"

    "${self}/s0melapt0p-nix/nixpkgs/config.nix"
    "${self}/s0melapt0p-nix/nixpkgs/system.nix"

    "${self}/s0melapt0p-nix/programs/gamemode.nix"
    "${self}/s0melapt0p-nix/programs/nh.nix"
    "${self}/s0melapt0p-nix/programs/steam.nix"
    "${self}/s0melapt0p-nix/programs/ssh.nix"
    "${self}/s0melapt0p-nix/programs/yubikey-touch-detector.nix"

    "${self}/s0melapt0p-nix/security/polkit.nix"
    "${self}/s0melapt0p-nix/security/rtkit.nix"
    "${self}/s0melapt0p-nix/security/sudo.nix"
    "${self}/s0melapt0p-nix/security/sudo-rs.nix"
    "${self}/s0melapt0p-nix/security/pam/services.nix"

    "${self}/s0melapt0p-nix/services/fprintd.nix"
    "${self}/s0melapt0p-nix/services/greetd.nix"
    "${self}/s0melapt0p-nix/services/libinput.nix"
    "${self}/s0melapt0p-nix/services/openssh.nix"
    "${self}/s0melapt0p-nix/services/pipewire.nix"
    "${self}/s0melapt0p-nix/services/qmk.nix"
    "${self}/s0melapt0p-nix/services/thinkfan.nix"
    "${self}/s0melapt0p-nix/services/usbmuxd.nix"
    "${self}/s0melapt0p-nix/services/xserver.nix"
    "${self}/s0melapt0p-nix/services/zapret.nix"
    "${self}/s0melapt0p-nix/services/zerotier.nix"
    "${self}/s0melapt0p-nix/services/yggdrasil.nix"
    "${self}/s0melapt0p-nix/services/netbird.nix"
    "${self}/s0melapt0p-nix/services/yubikey-agent.nix"

    "${self}/s0melapt0p-nix/sops/defaults.nix"
    "${self}/s0melapt0p-nix/sops/secrets.nix"

    "${self}/hand7s/stylix/base16Scheme.nix"
    "${self}/hand7s/stylix/cursor.nix"
    "${self}/hand7s/stylix/defaults.nix"
    "${self}/hand7s/stylix/fonts.nix"
    "${self}/hand7s/stylix/image.nix"

    "${self}/s0melapt0p-nix/system/name.nix"
    "${self}/s0melapt0p-nix/system/stateVersion.nix"

    "${self}/s0melapt0p-nix/systemd/oomd.nix"

    "${self}/s0melapt0p-nix/time/timeZone.nix"

    "${self}/s0melapt0p-nix/users/users/hand7s.nix"
    "${self}/s0melapt0p-nix/users/users/root.nix"
    "${self}/s0melapt0p-nix/users/mutableUsers.nix"

    "${self}/s0melapt0p-nix/virtualisation/docker.nix"

    "${self}/s0melapt0p-nix/xdg/icons.nix"
    "${self}/s0melapt0p-nix/xdg/mime.nix"
    "${self}/s0melapt0p-nix/xdg/portal.nix"
  ];
}
