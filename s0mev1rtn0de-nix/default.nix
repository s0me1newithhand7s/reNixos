{...}: {
  imports = [
    "${self}/s0mev1rtn0de/disko/disk.nix"
    "${self}/s0mev1rtn0de/disko/lvm_vg.nix"

    "${self}/s0mev1rtn0de/boot/initrd/availableKernelModules.nix"
    "${self}/s0mev1rtn0de/boot/initrd/kernelModules.nix"
    "${self}/s0mev1rtn0de/boot/loader/grub.nix"
    "${self}/s0mev1rtn0de/boot/kernel.nix"
    "${self}/s0mev1rtn0de/boot/tmp.nix"

    "${self}/s0mev1rtn0de/environment/systemPackages.nix"

    "${self}/s0mev1rtn0de/hardware/zram.nix"

    "${self}/s0mev1rtn0de/networking/firewall/ens3.nix"
    "${self}/s0mev1rtn0de/networking/firewall/wt0.nix"
    "${self}/s0mev1rtn0de/networking/firewall.nix"
    "${self}/s0mev1rtn0de/networking/hostname.nix"
    "${self}/s0mev1rtn0de/networking/dns.nix"
    "${self}/s0mev1rtn0de/networking/nftables.nix"
    "${self}/s0mev1rtn0de/networking/wireguard.nix"
    "${self}/s0mev1rtn0de/networking/wg-quick.nix"
    "${self}/s0mev1rtn0de/networking/nat.nix"

    "${self}/s0mev1rtn0de/nix/settings/allowed-users.nix"
    "${self}/s0mev1rtn0de/nix/settings/experimental-features.nix"
    "${self}/s0mev1rtn0de/nix/settings/substituters.nix"
    "${self}/s0mev1rtn0de/nix/settings/trusted-public-keys.nix"
    "${self}/s0mev1rtn0de/nix/settings/trusted-users.nix"
    "${self}/s0mev1rtn0de/nix/settings/auto-optimise-store.nix"

    "${self}/s0mev1rtn0de/nixpkgs/config.nix"
    "${self}/s0mev1rtn0de/nixpkgs/platform.nix"

    "${self}/s0mev1rtn0de/programs/nh.nix"

    "${self}/s0mev1rtn0de/services/openssh.nix"
    "${self}/s0mev1rtn0de/services/fail2ban.nix"
    "${self}/s0mev1rtn0de/services/netbird.nix"
    "${self}/s0mev1rtn0de/services/qemuGuest.nix"
    "${self}/s0mev1rtn0de/services/caddy.nix"
    "${self}/s0mev1rtn0de/services/sing-box.nix"

    "${self}/s0mev1rtn0de/sops/age.nix"
    "${self}/s0mev1rtn0de/sops/defaults.nix"
    "${self}/s0mev1rtn0de/sops/secrets.nix"

    "${self}/s0mev1rtn0de/system/stateVersion.nix"

    "${self}/s0mev1rtn0de/users/users.nix"
    "${self}/s0mev1rtn0de/users/users/askhat.nix"
    "${self}/s0mev1rtn0de/users/users/hand7s.nix"
    "${self}/s0mev1rtn0de/users/users/root.nix"

    "${self}/s0mev1rtn0de/virtualisation/docker.nix"
  ];
}
