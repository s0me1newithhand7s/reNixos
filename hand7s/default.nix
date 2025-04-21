{
    imports = [
        ./fonts/fonts.nix
        ./options/gui.nix

        ./wayland/hyprland.nix
        ./wayland/river.nix
        ./wayland/sway.nix

        ./home/defaults.nix
        ./home/gui.nix
        ./home/keyboard.nix
        ./home/packages.nix
        ./home/shellAliases.nix
        
        ./nixpkgs/config.nix
        ./nixpkgs/overlays.nix

        ./services/hypridle.nix
        ./services/swayidle.nix

        ./systemd/hyprpanel-service.nix
        ./systemd/hyprpolkitagent-service.nix
        ./systemd/yambar-service.nix

        ./programs/bat.nix
        ./programs/eza.nix
        ./programs/fish.nix
        ./programs/fzf.nix
        ./programs/ghostty.nix
        ./programs/git.nix
        ./programs/mpv.nix
        ./programs/helix.nix
        ./programs/index.nix
        ./programs/obs-studio.nix
        ./programs/starship.nix
        ./programs/firefox.nix
        ./programs/swaylock.nix
        ./programs/yazi.nix
        ./programs/zoxide.nix
        ./programs/chrome.nix
        ./programs/fuzzel.nix
        ./programs/hyprlock.nix
        ./programs/hyprpanel.nix
        ./programs/spicetify.nix
        ./programs/vscode.nix
        ./programs/yambar.nix
    ];
}
