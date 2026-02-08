_: {
  boot = {
    initrd = {
      kernelModules = [
        "virtio_balloon"
        "virtio_console"
        "virtio_rng"
        "virtio_gpu"
        "nvme"
        "kvm-amd"
      ];
    };
  };
}
