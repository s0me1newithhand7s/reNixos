{
    imports = [
        ./boot/initrd.nix
        ./boot/kernel.nix
        ./boot/lanzaboote.nix
        ./boot/plymouth.nix
        ./boot/tmp.nix
        ./boot/loader/systemd-boot.nix
        ./boot/zfs.nix

        ./console/console.nix

        ./environment/systemPackages.nix
        ./environment/variables.nix

        ./hardware/amdgpu.nix
        ./hardware/cpu.nix
        ./hardware/graphics.nix
        ./hardware/openrazer.nix
        ./hardware/qmk.nix
        ./hardware/zram.nix

        ./home-manager/users.nix

        ./i18n/locales.nix

        ./networking/dhcp.nix
        ./networking/firewall.nix
        ./networking/hostname.nix
        ./networking/networkmanager.nix
        ./networking/wireguard.nix
        ./networking/nameservers.nix
        ./networking/hosts.nix
        ./networking/hostId.nix

        ./nix/package.nix
        ./nix/settings/allowed-users.nix
        ./nix/settings/experimental-features.nix
        ./nix/settings/substituters.nix
        ./nix/settings/trusted-public-keys.nix
        ./nix/settings/trusted-users.nix
        ./nix/settings/auto-optimise-store.nix

        ./nixpkgs/config.nix
        ./nixpkgs/system.nix

        ./programs/gamescope.nix
        ./programs/gamemode.nix
        ./programs/nh.nix
        ./programs/steam.nix
        ./programs/ssh.nix

        ./security/polkit.nix
        ./security/rtkit.nix
        ./security/sudo.nix
        ./security/sudo-rs.nix

        ./services/greetd.nix
        ./services/libinput.nix
        ./services/openssh.nix
        ./services/pipewire.nix
        ./services/netbird.nix
        ./services/qmk.nix
        ./services/scx.nix
        ./services/xserver.nix
        ./services/zapret.nix
        ./services/zerotier.nix
        ./services/yggdrasil.nix
        ./services/sunshine.nix
        ./services/usbmuxd.nix
        ./services/irqbalance.nix

        ./sops/defaults.nix
        ./sops/secrets.nix

        ./stylix/base16Scheme.nix
        ./stylix/cursor.nix
        ./stylix/defaults.nix
        ./stylix/fonts.nix
        ./stylix/image.nix

        ./system/name.nix
        ./system/stateVersion.nix

        ./time/timeZone.nix

        ./users/users/hand7s.nix
        ./users/users/root.nix
        ./users/mutableUsers.nix

        ./virtualisation/docker.nix

        ./xdg/icons.nix
        ./xdg/mime.nix
        ./xdg/portal.nix
    ];
}
