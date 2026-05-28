_: {
  security = {
    pam = {
      u2f = {
        enable = true;
        cue = true;
        # control = "required";
      };
    };
  };
}
