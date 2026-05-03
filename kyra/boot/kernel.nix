{self, ...}: {
  boot = {
    kernelPackages = self.inputs."nix-cachyos-kernel".legacyPackages.x86_64-linux.linuxPackages-cachyos-hardened-lto;

    kernelParams = [
      "slab_nomerge"
      "init_on_alloc=1"
      "init_on_free=1"
      "page_alloc.shuffle=1"
      "oops=panic"
      "mitigations=all"
      "spectre_v2=on"
      "spec_store_bypass_disable=on"
      "l1tf=full,force"
      "mds=full,force"
      "tsx=off"
      "tsx_async_abort=full,force"
      "kvm.nx_huge_pages=force"
      "page_poison=1"
      "iommu=force"
      "intel_iommu=on"
      "amd_iommu=on"
      "bpf_jit_enable=0"
    ];

    blacklistedKernelModules = [
      "dccp"
      "sctp"
      "rds"
      "tipc"
      "hfs"
      "hfsplus"
      "squashfs"
      "jfs"
      "minix"
      "nilfs2"
      "omfs"
      "qnx4"
      "qnx6"
      "sysv"
      "ufs"
      "zfs"
      "ntfs"
      "bluetooth"
      "btusb"
      "uvcvideo"
      "joydev"
      "pcspkr"
      "snd_pcsp"
    ];

    kernel = {
      sysctl = {
        "vm.mmap_rnd_bits" = 32;
        "vm.mmap_rnd_compat_bits" = 16;

        "net.ipv6.conf.all.forwarding" = 1;

        "net.ipv4.ip_forward" = 1;

        "net.ipv4.conf.all.rp_filter" = 1;
        "net.ipv4.conf.all.accept_redirects" = 0;
        "net.ipv4.conf.all.secure_redirects" = 0;
        "net.ipv6.conf.all.accept_redirects" = 0;

        "net.ipv4.conf.default.rp_filter" = 1;
        "net.ipv4.conf.default.accept_redirects" = 0;
        "net.ipv4.conf.default.secure_redirects" = 0;
        "net.ipv6.conf.default.accept_redirects" = 0;

        "net.ipv4.tcp_rfc1337" = 1;
        "net.ipv4.tcp_syncookies" = 1;

        "net.core.bpf_jit_harden" = 2;

        "dev.tty.ldisc_autoload" = 0;

        "kernel.yama.ptrace_scope" = 2;
        "kernel.core_pattern" = "|/bin/false";
        "kernel.kptr_restrict" = 2;
        "kernel.dmesg_restrict" = 1;
        "kernel.unprivileged_bpf_disabled" = 1;
        "kernel.unprivileged_userns_clone" = 0;
        "kernel.perf_event_paranoid" = 3;
        "kernel.kstack_override" = 0;

        "fs.protected_fifos" = 2;
        "fs.protected_regular" = 2;
        "fs.protected_hardlinks" = 1;
        "fs.protected_symlinks" = 1;
      };
    };
  };
}
