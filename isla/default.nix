{self, ...}: {
  imports = [
    "${self}/isla/disko/disk.nix"
    "${self}/isla/disko/lvm_vg.nix"

    "${self}/isla/boot/loader/system-boot.nix"
    "${self}/isla/boot/lanzaboote.nix"
    "${self}/isla/boot/initrd.nix"
    "${self}/isla/boot/kernel.nix"
    "${self}/isla/boot/plymouth.nix"
    "${self}/isla/boot/tmp.nix"

    "${self}/isla/console/console.nix"

    "${self}/isla/environment/systemPackages.nix"
    "${self}/isla/environment/variables.nix"

    "${self}/isla/hardware/cpu.nix"
    "${self}/isla/hardware/graphics.nix"
    "${self}/isla/hardware/qmk.nix"
    "${self}/isla/hardware/zram.nix"

    "${self}/isla/home-manager/users.nix"

    "${self}/isla/i18n/locales.nix"

    "${self}/isla/networking/dhcp.nix"
    "${self}/isla/networking/firewall.nix"
    "${self}/isla/networking/hostname.nix"
    "${self}/isla/networking/networkmanager.nix"
    "${self}/isla/networking/wireguard.nix"
    "${self}/isla/networking/nameservers.nix"
    "${self}/isla/networking/hosts.nix"
    "${self}/isla/networking/hostId.nix"

    "${self}/isla/nix/package.nix"
    "${self}/isla/nix/settings/allowed-users.nix"
    "${self}/isla/nix/settings/experimental-features.nix"
    "${self}/isla/nix/settings/substituters.nix"
    "${self}/isla/nix/settings/trusted-public-keys.nix"
    "${self}/isla/nix/settings/trusted-users.nix"

    "${self}/isla/nixpkgs/config.nix"
    "${self}/isla/nixpkgs/system.nix"

    "${self}/isla/programs/gamemode.nix"
    "${self}/isla/programs/nh.nix"
    "${self}/isla/programs/steam.nix"
    "${self}/isla/programs/ssh.nix"
    "${self}/isla/programs/yubikey-touch-detector.nix"

    "${self}/isla/security/polkit.nix"
    "${self}/isla/security/rtkit.nix"
    "${self}/isla/security/sudo.nix"
    "${self}/isla/security/sudo-rs.nix"
    "${self}/isla/security/pam/services.nix"

    "${self}/isla/services/fprintd.nix"
    "${self}/isla/services/greetd.nix"
    "${self}/isla/services/libinput.nix"
    "${self}/isla/services/openssh.nix"
    "${self}/isla/services/pipewire.nix"
    "${self}/isla/services/qmk.nix"
    "${self}/isla/services/thinkfan.nix"
    "${self}/isla/services/usbmuxd.nix"
    "${self}/isla/services/xserver.nix"
    "${self}/isla/services/zapret.nix"
    "${self}/isla/services/zerotier.nix"
    "${self}/isla/services/yggdrasil.nix"
    "${self}/isla/services/netbird.nix"
    "${self}/isla/services/yubikey-agent.nix"

    "${self}/isla/sops/defaults.nix"
    "${self}/isla/sops/secrets.nix"

    "${self}/hand7s/stylix/base16Scheme.nix"
    "${self}/hand7s/stylix/cursor.nix"
    "${self}/hand7s/stylix/defaults.nix"
    "${self}/hand7s/stylix/fonts.nix"
    "${self}/hand7s/stylix/image.nix"

    "${self}/isla/system/name.nix"
    "${self}/isla/system/stateVersion.nix"

    "${self}/isla/systemd/oomd.nix"

    "${self}/isla/time/timeZone.nix"

    "${self}/isla/users/users/hand7s.nix"
    "${self}/isla/users/users/root.nix"
    "${self}/isla/users/mutableUsers.nix"

    "${self}/isla/virtualisation/docker.nix"

    "${self}/isla/xdg/icons.nix"
    "${self}/isla/xdg/mime.nix"
    "${self}/isla/xdg/portal.nix"
  ];
}
