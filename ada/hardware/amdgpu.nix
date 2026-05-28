_: {
  hardware = {
    amdgpu = {
      initrd = {
        enable = true;
      };

      overdrive = {
        enable = true;
        ppfeaturemask = "0xfffd7fff";
      };
    };
  };
}
