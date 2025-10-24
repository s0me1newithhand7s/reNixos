{...}: {
    programs = {
        kitty = {
            enable = true;
            enableGitIntegration = true;

            shellIntegration = {
                enableFishIntegration = true;
            };
        };
    };
}
