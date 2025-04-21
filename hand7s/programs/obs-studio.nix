{
    config,
    pkgs,
    lib,
    ...
}: {
    programs = {
        obs-studio = {
            enable = lib.mkIf (
                config.home.gui.sessionType == "Hyprland"
            ) true;
            
            plugins = with pkgs.obs-studio-plugins; [
                wlrobs
                waveform
                obs-vkcapture
                obs-pipewire-audio-capture
                obs-webkitgtk
            ];
        };
    };
}
