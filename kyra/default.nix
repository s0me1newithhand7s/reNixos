{self, ...}: {
  imports = [
    "${self}/kyra/disko/disk.nix"
    "${self}/kyra/disko/lvm_vg.nix"

    "${self}/kyra/boot/initrd/availableKernelModules.nix"
    "${self}/kyra/boot/initrd/kernelModules.nix"
    "${self}/kyra/boot/loader/grub.nix"
    "${self}/kyra/boot/kernel.nix"
    "${self}/kyra/boot/tmp.nix"

    "${self}/kyra/environment/systemPackages.nix"

    "${self}/kyra/hardware/zram.nix"

    "${self}/kyra/home-manager/users.nix"

    "${self}/kyra/networking/interfaces/ens3.nix"
    "${self}/kyra/networking/firewall/ens3.nix"
    "${self}/kyra/networking/firewall.nix"
    "${self}/kyra/networking/dns.nix"
    "${self}/kyra/networking/wireguard.nix"
    "${self}/kyra/networking/defaultGateway.nix"

    "${self}/kyra/nix/settings/allowed-users.nix"
    "${self}/kyra/nix/settings/experimental-features.nix"
    "${self}/kyra/nix/settings/substituters.nix"
    "${self}/kyra/nix/settings/trusted-public-keys.nix"
    "${self}/kyra/nix/settings/trusted-users.nix"
    "${self}/kyra/nix/settings/auto-optimise-store.nix"

    "${self}/kyra/nixpkgs/config.nix"
    "${self}/kyra/nixpkgs/platform.nix"

    "${self}/kyra/programs/nh.nix"

    "${self}/kyra/services/openssh.nix"
    "${self}/kyra/services/fail2ban.nix"
    "${self}/kyra/services/netbird.nix"
    "${self}/kyra/services/qemuGuest.nix"
    "${self}/kyra/services/caddy.nix"
    "${self}/kyra/services/sing-box.nix"

    "${self}/kyra/sops/age.nix"
    "${self}/kyra/sops/defaults.nix"
    "${self}/kyra/sops/secrets.nix"

    "${self}/kyra/system/stateVersion.nix"

    "${self}/kyra/users/users.nix"
    "${self}/kyra/users/users/alep0u.nix"
    "${self}/kyra/users/users/hand7s.nix"
    "${self}/kyra/users/users/root.nix"

    "${self}/kyra/virtualisation/docker.nix"
  ];
}
