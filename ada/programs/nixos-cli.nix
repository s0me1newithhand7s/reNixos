_: {
  programs = {
    nixos-cli = {
      enable = true;
      activation-interface = {
        enable = true;
      };

      option-cache = {
        enable = true;
        exclude = [
          "age"
          "sops"
        ];
      };
    };
  };
}
