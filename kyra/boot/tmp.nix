_: {
  boot = {
    tmp = {
      cleanOnBoot = true;
      useZram = true;
      useTmpfs = true;
      tmpfsSize = "50%";
      tmpfsHugeMemoryPages = "within_size";
    };
  };
}
