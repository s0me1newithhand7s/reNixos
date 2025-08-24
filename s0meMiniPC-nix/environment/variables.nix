{config, ...}: {
    environment = {
        variables = {
            AMD_VULKAN_ICD = "RADV";
            HOSTNAME = config.networking.hostName;
            QT_QPA_PLATFORM = "wayland";
            SDL_VIDEODRIVER = "wayland";
            CLUTTER_BACKEND = "wayland";
            GDK_BACKEND = "wayland";
            XDG_SESSION_TYPE = "wayland";
            XDG_CURRENT_DESKTOP = "wayland";
            XDG_SESSION_DESKTOP = "wayland";
            NIXPKGS_ALLOW_UNFREE = "1";
            NIXPKGS_ALLOW_INSECURE = "1";
            NIXOS_OZONE_WL = "1";
            NIX_SSHOPTS = "-p 6969";
            GRIMBLAST_HIDE_CURSOR = "0";
            TERM = "xterm-256color";
        };
    };
}
