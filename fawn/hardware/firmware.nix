{pkgs, ...}: {
  hardware = {
    firmware = with pkgs; [
      linux-firmware
      alsa-firmware
      sof-firmware
    ];
  };
}
