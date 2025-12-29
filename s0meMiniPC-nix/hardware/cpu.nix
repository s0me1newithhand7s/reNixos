{...}: {
  hardware = {
    enableRedistributableFirmware = true;
    cpu = {
      intel = {
        updateMicrocode = true;
      };
    };
  };
}
