_: {
  programs = {
    atuin = {
      enable = true;
      enableNushellIntegration = true;
      enableFishIntegration = true;

      settings = {
        keymap_mode = "vim-normal";
        cursor_style = "blink-block";
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
