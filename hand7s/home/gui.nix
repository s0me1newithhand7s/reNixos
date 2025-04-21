{
    osConfig,
    lib,
    ...
}:{
    home = {
        gui = {
            enable = lib.mkIf (
                osConfig.networking.hostName == "s0mePC-nix" || osConfig.networking.hostName == "s0melapt0p-nix"
            ) true;


            sessionType = if (
                osConfig.networking.hostName == "s0mePC-nix"
            ) then (
                "Hyprland"
            ) else if ( 
                osConfig.networking.hostName == "s0melapt0p-nix"
            ) then (
                "Sway"
            ) else (
                "None"
            );
        };
    };
}
