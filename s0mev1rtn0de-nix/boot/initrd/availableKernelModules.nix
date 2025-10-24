{...}: {
    boot = {
        initrd = {
            availableKernelModules = [
                "ata_piix"
                "uhci_hcd"
                "xen_blkfront"
                "vmw_pvscsi"
                "virtio_net"
                "virtio_pci"
                "virtio_mmio"
                "virtio_blk"
                "virtio_scsi"
                "9p"
                "9pnet_virtio"
            ];
        };
    };
}
