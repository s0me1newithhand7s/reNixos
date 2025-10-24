{...}: {
    imports = [
        ./disko/disk.nix
        ./disko/lvm_vg.nix

        ./boot/initrd/availableKernelModules.nix
        ./boot/initrd/kernelModules.nix
        ./boot/loader/grub.nix
        ./boot/kernel.nix
        ./boot/tmp.nix

        ./environment/systemPackages.nix

        ./hardware/zram.nix

        ./networking/firewall/ens3.nix
        ./networking/firewall/wt0.nix
        ./networking/firewall.nix
        ./networking/hostname.nix
        ./networking/dns.nix
        ./networking/nftables.nix
        ./networking/wireguard.nix
        ./networking/wg-quick.nix
        ./networking/nat.nix

        ./nix/settings/allowed-users.nix
        ./nix/settings/experimental-features.nix
        ./nix/settings/substituters.nix
        ./nix/settings/trusted-public-keys.nix
        ./nix/settings/trusted-users.nix
        ./nix/settings/auto-optimise-store.nix

        ./nixpkgs/config.nix
        ./nixpkgs/platform.nix

        ./programs/nh.nix

        ./services/openssh.nix
        ./services/fail2ban.nix
        ./services/netbird.nix
        ./services/qemuGuest.nix
        ./services/caddy.nix
        ./services/sing-box.nix

        ./sops/age.nix
        ./sops/defaults.nix
        ./sops/secrets.nix

        ./system/stateVersion.nix

        ./users/users.nix
        ./users/users/askhat.nix
        ./users/users/hand7s.nix
        ./users/users/root.nix

        ./virtualisation/docker.nix
    ];
}
