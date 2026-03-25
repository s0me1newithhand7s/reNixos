_: {
  security = {
    pam = {
      yubico = {
        enable = false;
        debug = true;
        mode = "challenge-response";
        control = "sufficient";
        id = [
          "funnyID"
        ];
      };
    };
  };
}
