_: {
  services = {
    xserver = {
      enable = false;
      xkb = {
        layout = "us, ru";
        variant = "";
        options = "grp:caps_toggle";
      };
    };
  };
}
