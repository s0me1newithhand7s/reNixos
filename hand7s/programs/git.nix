{
    config,
    ...
}: {
    programs = {
        git = {
            enable = true;
            userEmail = "117505144+s0me1newithhand7s@users.noreply.github.com";
            userName = "s0me1newithhand7s";
            aliases = {
                pushall = "push github; push gitlab";
                pushall-f = "push --force github; push --force gitlab";
                key = config.sops.secrets.sshKeyOpen.path;
            };

            signing = {
                format = "ssh";
                signByDefault = true;
            };

            lfs = {
                enable = true;
            };
        };
    };
}
