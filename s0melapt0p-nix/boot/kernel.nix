{
    pkgs,
    lib,
    ...
}: {
    boot = {
        kernel = {
            sysctl = {
                "vm.swappiness" = 100;
                "vm.dirty_background_bytes" = 67108864;
                "vm.dirty_bytes" = 268435456;
                "vm.dirty_expire_centisecs" = 1500;
                "vm.dirty_writeback_centisecs" = 100;
                "vm.vfs_cache_pressure" = 50;
                "vm.max_map_count" = 1048576;
            };
        };

        kernelPackages = pkgs.linuxPackages_zen;
        extraModprobeConfig = ''
            options thinkpad_acpi  fan_control=1
        '';

        kernelParams = [
            "i915.enable_rc6=7"
            "udev.log_priority=3"
            "quiet"
            "splash"
            "boot.shell_on_fail"
            "loglevel=3"
            "rd.systemd.show_status=false"
            "rd.udev.log_level=3"

            "debugfs=off"
            "page_alloc.shuffle=1"
            "page_poison=1"
            "slab_nomerge"

            "kernel.watchdog=0"
            "oops=panic"
        ];

        kernelModules = [
            "tp_smapi"
        ];

        blacklistedKernelModules = [
            "k10temp"
            "ax25"
            "netrom"
            "rose"
            "adfs"
            "affs"
            "bfs"
            "befs"
            "cramfs"
            "efs"
            "erofs"
            "exofs"
            "freevxfs"
            "f2fs"
            "hfs"
            "hpfs"
            "jfs"
            "minix"
            "nilfs2"
            "ntfs"
            "omfs"
            "qnx4"
            "qnx6"
            "sysv"
            "ufs"
            "sp5100-tco"
            "iTCO_wdt"
        ];

        supportedFilesystems = {
            vfat = true;
            btrfs = true;
            zfs = lib.mkForce false;
        };

        consoleLogLevel = 0;
    };
}
