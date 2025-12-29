{
  config,
  pkgs,
  lib,
  ...
}: {
  programs = {
    vscode = {
      profiles = {
        default = {
          extensions = with pkgs.vscode-extensions; [
            jnoortheen.nix-ide
            ms-vscode-remote.vscode-remote-extensionpack
            ms-vsliveshare.vsliveshare
            redhat.vscode-yaml
            redhat.ansible
          ];

          userSettings = lib.mkForce {
            "editor.fontFamily" = config.stylix.fonts.emoji.name;
            "editor.fontSize" = 16;

            "editor.cursorBlinking" = "smooth";
            "editor.cursorSmoothCaretAnimation" = "on";
            "editor.wordWrap" = "on";

            "workbench.colorTheme" = "Tokyo Night Moon";
            "workbench.sideBar.location" = "right";
            "workbench.activityBar.location" = "top";
            "workbench.editor.editorActionsLocation" = "titleBar";
            "workbench.editor.showTabs" = "none";

            "window.menuBarVisibility" = "hidden";

            "terminal.integrated.cursorBlinking" = true;

            "files.autoSave" = "afterDelay";

            "[nix]" = {
              "editor.insertSpaces" = true;
              "editor.tabSize" = 4;
            };
          };
        };
      };
    };
  };
}
