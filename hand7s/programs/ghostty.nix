{
  pkgs,
  lib,
  ...
}: {
  programs = {
    ghostty = {
      enableFishIntegration = true;
      installBatSyntax = true;
      settings = {
        title = "";

        bell-features = "system";

        command = "${lib.getExe pkgs.fish}";

        confirm-close-surface = false;

        cursor-style-blink = true;
        cursor-style = "bar";

        mouse-hide-while-typing = true;

        working-directory = "home";

        window-save-state = "never";

        window-inherit-working-directory = false;

        keybind = [
          "ctrl+shift+d=new_split:right"
          "ctrl+shift+a=new_split:down"
        ];
      };
    };
  };
}
