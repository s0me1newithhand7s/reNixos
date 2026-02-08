{self, ...}: {
  imports = [
    "${self}/wanda/console/console.nix"

    "${self}/wanda/environment/systemPackages.nix"
    "${self}/wanda/environment/variables.nix"

    "${self}/wanda/hardware/zram.nix"
    "${self}/wanda/hardware/"

    "${self}/wanda/home-manager/users.nix"

    "${self}/wanda/i18n/locales.nix"

    "${self}/wanda/networking/dhcp.nix"
    "${self}/wanda/networking/firewall.nix"
    "${self}/wanda/networking/hostname.nix"
    "${self}/wanda/networking/networkmanager.nix"
    "${self}/wanda/networking/wireguard.nix"
    "${self}/wanda/networking/nameservers.nix"
    "${self}/wanda/networking/hosts.nix"
    "${self}/wanda/networking/hostId.nix"

    "${self}/wanda/nix/package.nix"
    "${self}/wanda/nix/settings/allowed-users.nix"
    "${self}/wanda/nix/settings/experimental-features.nix"
    "${self}/wanda/nix/settings/substituters.nix"
    "${self}/wanda/nix/settings/trusted-public-keys.nix"
    "${self}/wanda/nix/settings/trusted-substituters.nix"
    "${self}/wanda/nix/settings/trusted-users.nix"
    "${self}/wanda/nix/settings/auto-optimise-store.nix"

    "${self}/wanda/nixpkgs/config.nix"
    "${self}/wanda/nixpkgs/system.nix"

    "${self}/wanda/programs/nh.nix"
    "${self}/wanda/programs/ssh.nix"

    "${self}/wanda/security/polkit.nix"
    "${self}/wanda/security/rtkit.nix"
    "${self}/wanda/security/sudo.nix"
    "${self}/wanda/security/sudo-rs.nix"
    "${self}/wanda/security/pam/yubico.nix"

    "${self}/wanda/services/greetd.nix"
    "${self}/wanda/services/libinput.nix"
    "${self}/wanda/services/openssh.nix"
    "${self}/wanda/services/pipewire.nix"
    "${self}/wanda/services/netbird.nix"
    "${self}/wanda/services/qmk.nix"
    "${self}/wanda/services/scx.nix"
    "${self}/wanda/services/xserver.nix"
    "${self}/wanda/services/sunshine.nix"
    "${self}/wanda/services/usbmuxd.nix"
    "${self}/wanda/services/irqbalance.nix"
    "${self}/wanda/services/yubikey-agent.nix"
    "${self}/wanda/services/resolved.nix"

    "${self}/wanda/sops/defaults.nix"
    "${self}/wanda/sops/secrets.nix"

    "${self}/hand7s/stylix/base16Scheme.nix"
    "${self}/hand7s/stylix/cursor.nix"
    "${self}/hand7s/stylix/defaults.nix"
    "${self}/hand7s/stylix/fonts.nix"
    "${self}/hand7s/stylix/image.nix"

    "${self}/wanda/system/name.nix"
    "${self}/wanda/system/stateVersion.nix"

    "${self}/wanda/systemd/oomd.nix"
    "${self}/wanda/systemd/slices/system-slice.nix"
    "${self}/wanda/systemd/slices/user-slice.nix"
    "${self}/wanda/systemd/slices/root-slice.nix"

    "${self}/wanda/time/timeZone.nix"

    "${self}/wanda/users/users/hand7s.nix"
    "${self}/wanda/users/users/root.nix"
    "${self}/wanda/users/mutableUsers.nix"

    "${self}/wanda/wsl/"
    "${self}/wanda/wsl/wslConf.nix"

    "${self}/wanda/xdg/icons.nix"
    "${self}/wanda/xdg/mime.nix"
    "${self}/wanda/xdg/portal.nix"
  ];
}
