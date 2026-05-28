{
  config,
  self,
  ...
}: {
  boot = {
    kernel = {
      sysctl = {
        "vm.swappiness" = 150;
        "vm.dirty_background_bytes" = 67108864;
        "vm.dirty_bytes" = 268435456;
        "vm.dirty_expire_centisecs" = 1500;
        "vm.dirty_writeback_centisecs" = 100;
        "vm.vfs_cache_pressure" = 50;
        "vm.max_map_count" = 1048576;
        "vm.page-cluster" = 0;

        "net.core.bpf_jit_harden" = 1;

        "dev.tty.ldisc_autoload" = 0;

        "net.ipv4.conf.all.accept_redirects" = 0;
        "net.ipv4.conf.default.accept_redirects" = 0;
        "net.ipv4.conf.all.secure_redirects" = 0;
        "net.ipv4.conf.default.secure_redirects" = 0;
        "net.ipv6.conf.all.accept_redirects" = 0;
        "net.ipv6.conf.default.accept_redirects" = 0;
        "net.ipv4.tcp_rfc1337" = 1;
        "net.ipv4.tcp_syncookies" = 1;
        "net.ipv4.icmp_echo_ignore_broadcasts" = 1;

        "kernel.dmesg_restrict" = 1;
        "kernel.kptr_restrict" = 2;
      };
    };

    kernelPackages = self.inputs."nix-cachyos-kernel".legacyPackages.x86_64-linux.linuxPackages-cachyos-latest-lto-x86_64-v3;
    extraModulePackages = with config.boot.kernelPackages; [
      v4l2loopback
    ];

    kernelModules = [
      "amdgpu"
      "v4l2loopback"
      "i2c-dev"
      "ntsync"
    ];

    kernelParams = [
      "amd_pstate=active"
      "amd_iommu=force"

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

      "kernel.watchdog=0"
      "mitigations=auto"
      "lockdown=integrity"
      "init_on_alloc=1"
      "init_on_free=1"
      "slab_nomerge"
      "page_alloc.shuffle=1"
      "vsyscall=none"
      "oops=panic"
    ];

    blacklistedKernelModules = [
      "dccp"
      "sctp"
      "rds"
      "tipc"
      "n-hdlc"
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
      "zfs"
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
      "ntfs3"
      "appletalk"
      "psnap"
      "p8022"
      "p8023"
    ];

    supportedFilesystems = {
      vfat = true;
      btrfs = true;
      bcachefs = true;
    };

    consoleLogLevel = 0;
  };
}
