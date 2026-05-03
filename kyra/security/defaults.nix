_: {
  security = {
    unprivilegedUsernsClone = false;
    forcePageTableIsolation = true;
    allowSimultaneousMultithreading = false;
    protectKernelImage = true;
    lockKernelModules = true;

    virtualisation = {
      flushL1DataCache = "always";
    };
  };
}
