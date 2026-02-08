{self, ...}: {
  imports = [
    "${self}/ada/boot/initrd.nix"
    "${self}/ada/boot/kernel.nix"
    "${self}/ada/boot/lanzaboote.nix"
    "${self}/ada/boot/plymouth.nix"
    "${self}/ada/boot/tmp.nix"
    "${self}/ada/boot/loader/systemd-boot.nix"

    "${self}/ada/disko/disk.nix"
    "${self}/ada/disko/lvm_vg.nix"

    "${self}/ada/console/console.nix"

    "${self}/ada/environment/systemPackages.nix"
    "${self}/ada/environment/variables.nix"

    "${self}/ada/hardware/amdgpu.nix"
    "${self}/ada/hardware/cpu.nix"
    "${self}/ada/hardware/graphics.nix"
    "${self}/ada/hardware/qmk.nix"
    "${self}/ada/hardware/zram.nix"
    "${self}/ada/hardware/bluetooth.nix"
    "${self}/ada/hardware/"

    "${self}/ada/home-manager/users.nix"

    "${self}/ada/i18n/locales.nix"

    "${self}/ada/networking/dhcp.nix"
    "${self}/ada/networking/firewall.nix"
    "${self}/ada/networking/hostname.nix"
    "${self}/ada/networking/networkmanager.nix"
    "${self}/ada/networking/wireguard.nix"
    "${self}/ada/networking/nameservers.nix"
    "${self}/ada/networking/hosts.nix"
    "${self}/ada/networking/hostId.nix"

    "${self}/ada/nix/package.nix"
    "${self}/ada/nix/settings/allowed-users.nix"
    "${self}/ada/nix/settings/experimental-features.nix"
    "${self}/ada/nix/settings/substituters.nix"
    "${self}/ada/nix/settings/trusted-public-keys.nix"
    "${self}/ada/nix/settings/trusted-substituters.nix"
    "${self}/ada/nix/settings/trusted-users.nix"
    "${self}/ada/nix/settings/auto-optimise-store.nix"

    "${self}/ada/nixpkgs/config.nix"
    "${self}/ada/nixpkgs/system.nix"

    "${self}/ada/programs/gamescope.nix"
    "${self}/ada/programs/gamemode.nix"
    "${self}/ada/programs/nh.nix"
    "${self}/ada/programs/steam.nix"
    "${self}/ada/programs/ssh.nix"
    "${self}/ada/programs/yubikey-touch-detector.nix"
    "${self}/ada/programs/nekoray.nix"

    "${self}/ada/security/polkit.nix"
    "${self}/ada/security/rtkit.nix"
    "${self}/ada/security/sudo.nix"
    "${self}/ada/security/sudo-rs.nix"
    "${self}/ada/security/pam/yubico.nix"

    "${self}/ada/services/greetd.nix"
    "${self}/ada/services/libinput.nix"
    "${self}/ada/services/openssh.nix"
    "${self}/ada/services/pipewire.nix"
    "${self}/ada/services/netbird.nix"
    "${self}/ada/services/qmk.nix"
    "${self}/ada/services/scx.nix"
    "${self}/ada/services/xserver.nix"
    "${self}/ada/services/sunshine.nix"
    "${self}/ada/services/usbmuxd.nix"
    "${self}/ada/services/irqbalance.nix"
    "${self}/ada/services/yubikey-agent.nix"
    "${self}/ada/services/resolved.nix"
    "${self}/ada/services/firewalld.nix"

    "${self}/ada/sops/defaults.nix"
    "${self}/ada/sops/secrets.nix"

    "${self}/hand7s/stylix/base16Scheme.nix"
    "${self}/hand7s/stylix/cursor.nix"
    "${self}/hand7s/stylix/defaults.nix"
    "${self}/hand7s/stylix/fonts.nix"
    "${self}/hand7s/stylix/image.nix"

    "${self}/ada/system/name.nix"
    "${self}/ada/system/stateVersion.nix"

    "${self}/ada/systemd/oomd.nix"
    "${self}/ada/systemd/slices/system-slice.nix"
    "${self}/ada/systemd/slices/user-slice.nix"
    "${self}/ada/systemd/slices/root-slice.nix"

    "${self}/ada/time/timeZone.nix"

    "${self}/ada/users/users/hand7s.nix"
    "${self}/ada/users/users/root.nix"
    "${self}/ada/users/mutableUsers.nix"

    "${self}/ada/xdg/icons.nix"
    "${self}/ada/xdg/mime.nix"
    "${self}/ada/xdg/portal.nix"
  ];
}
