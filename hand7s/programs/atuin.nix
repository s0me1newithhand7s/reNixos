_: {
  programs = {
    atuin = {
      enable = true;
      enableNushellIntegration = true;
      enableFishIntegration = true;

      settings = {
        keymap_mode = "vim-normal";
      };

      flags = [
        "--disable-up-arrow"
      ];

      daemon = {
        enable = true;
        logLevel = "info";
      };
    };
  };
}
