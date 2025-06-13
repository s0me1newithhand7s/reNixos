{pkgs,lib, ...}: {
    programs = {
        ghostty = {
            enableFishIntegration = true;
            installBatSyntax = true;
            settings = {
                title = "spooky scary tty";

                command = "${lib.getExe pkgs.fish} --login --interactive";

                confirm-close-surface = false;

                keybind = [
                    "ctrl+shift+d=new_split:right"
                    "ctrl+shift+h=goto_split:left"
                    "ctrl+shift+l=goto_split:right"
                ];
            };
        };
    };
}
