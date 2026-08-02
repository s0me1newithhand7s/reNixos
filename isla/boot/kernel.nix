{
  config,
  self,
  ...
}: {
  boot = {
    kexec = {
      enable = false;
    };

    kernel = {
      sysctl = {
        "dev.tty.ldisc_autoload" = 0;
        "fs.inotify.max_user_instances" = 524288;
        "fs.inotify.max_user_watches" = 524288;
        "fs.protected_fifos" = 2;
        "fs.protected_hardlinks" = 1;
        "fs.protected_regular" = 2;
        "fs.protected_symlinks" = 1;
        "fs.suid_dumpable" = 0;
        "kernel.dmesg_restrict" = 1;
        "kernel.kptr_restrict" = 2;
        "kernel.perf_event_paranoid" = 3;
        "kernel.randomize_va_space" = 2;
        "kernel.watchdog" = 0;
        "kernel.yama.ptrace_scope" = 2;
        "net.core.bpf_jit_harden" = 1;
        "net.ipv4.conf.all.accept_source_route" = 0;
        "net.ipv4.conf.all.accept_redirects" = 0;
        "net.ipv4.conf.all.log_martians" = 1;
        "net.ipv4.conf.all.rp_filter" = 1;
        "net.ipv4.conf.all.secure_redirects" = 0;
        "net.ipv4.conf.default.accept_source_route" = 0;
        "net.ipv4.conf.default.accept_redirects" = 0;
        "net.ipv4.conf.default.log_martians" = 1;
        "net.ipv4.conf.default.rp_filter" = 1;
        "net.ipv4.conf.default.secure_redirects" = 0;
        "net.ipv4.icmp_echo_ignore_broadcasts" = 1;
        "net.ipv4.icmp_ignore_bogus_error_responses" = 1;
        "net.ipv4.tcp_rfc1337" = 1;
        "net.ipv4.tcp_syncookies" = 1;
        "net.ipv6.conf.all.accept_source_route" = 0;
        "net.ipv6.conf.all.accept_ra_rt_info_max_plen" = 0;
        "net.ipv6.conf.all.accept_redirects" = 0;
        "net.ipv6.conf.all.rp_filter" = 1;
        "net.ipv6.conf.default.accept_source_route" = 0;
        "net.ipv6.conf.default.accept_ra_rt_info_max_plen" = 0;
        "net.ipv6.conf.default.accept_redirects" = 0;
        "net.ipv6.conf.default.rp_filter" = 1;
        "net.ipv6.icmp.echo_ignore_anycast" = 1;
        "net.ipv6.icmp.echo_ignore_multicast" = 1;
        "vm.dirty_background_bytes" = 67108864;
        "vm.dirty_bytes" = 268435456;
        "vm.dirty_expire_centisecs" = 1500;
        "vm.dirty_writeback_centisecs" = 100;
        "vm.max_map_count" = 1048576;
        "vm.mmap_rnd_bits" = 32;
        "vm.mmap_rnd_compat_bits" = 16;
        "vm.page-cluster" = 0;
        "vm.swappiness" = 200;
        "vm.vfs_cache_pressure" = 50;
      };
    };

    kernelPackages = self.inputs."nix-cachyos-kernel".legacyPackages.x86_64-linux.linuxPackages-cachyos-latest-lto-x86_64-v3;

    extraModulePackages = with config.boot.kernelPackages; [
      v4l2loopback
    ];

    kernelModules = [
      "amdgpu"
      "i2c-dev"
      "ntsync"
      "v4l2loopback"
    ];

    kernelParams = [
      "amd_pstate=active"
      "amdgpu.noretry=0"
      "video=DP-1:1920x1080@180D,rotate=270"
      "video=DP-2:2560x1440@165D"
      "iommu=pt"
      "amdgpu.gpu_recovery=1"
      "pcie_aspm=performance"
      "quiet"
      "splash"
      "boot.shell_on_fail"
      "loglevel=3"
      "rd.systemd.show_status=false"
      "rd.udev.log_level=3"
      "udev.log_priority=3"
      "mitigations=auto"
      "lockdown=integrity"
      "init_on_alloc=1"
      "init_on_free=1"
      "slab_nomerge"
      "page_alloc.shuffle=1"
      "vsyscall=none"
      "oops=panic"
      "lsm=landlock,yama,bpf"
    ];

    blacklistedKernelModules = [
      "adfs"
      "af_802154"
      "affs"
      "ahci"
      "appletalk"
      "ax25"
      "bcachefs"
      "befs"
      "bfs"
      "can"
      "cramfs"
      "dccp"
      "dvb_core"
      "ecryptfs"
      "efs"
      "erofs"
      "exfat"
      "exofs"
      "ext2"
      "ext3"
      "ext4"
      "f2fs"
      "firewire_core"
      "firewire_ohci"
      "firewire_sbp2"
      "floppy"
      "freevxfs"
      "gfs2"
      "hfs"
      "hpfs"
      "ip_tables"
      "iso9660"
      "iTCO_wdt"
      "jfs"
      "minix"
      "n-hdlc"
      "netrom"
      "nilfs2"
      "ntfs"
      "ntfs3"
      "ocfs2"
      "omfs"
      "p8022"
      "p8023"
      "parport"
      "parport_pc"
      "psnap"
      "qnx4"
      "qnx6"
      "rds"
      "reiserfs"
      "romfs"
      "rose"
      "sctp"
      "sp5100-tco"
      "sysv"
      "tipc"
      "udf"
      "ufs"
      "xfs"
      "zfs"
      "zonefs"
    ];

    supportedFilesystems = {
      vfat = true;
      btrfs = true;
    };

    consoleLogLevel = 0;
  };
}
