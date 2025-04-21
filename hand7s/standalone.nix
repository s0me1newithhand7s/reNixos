{
    imports = [
        ./fonts/fonts.nix
        ./options/gui.nix

        ./wayland/hyprland.nix
        ./wayland/river.nix

        ./nix/settings/substituters.nix
        ./nix/settings/trusted-public-keys.nix
        ./nix/package.nix

        ./stylix/base16Scheme.nix
        ./stylix/cursor.nix
        ./stylix/defaults.nix
        ./stylix/fonts.nix
        ./stylix/image.nix

        ./nixpkgs/config.nix
        ./nixpkgs/overlays.nix

        ./home/defaults.nix
        ./home/gui.nix
        ./home/keyboard.nix
        ./home/packages.nix
        ./home/shellAliases.nix

        ./services/hypridle.nix

        ./systemd/hyprpanel-service.nix
        ./systemd/hyprpolkitagent-service.nix

        ./programs/bat.nix
        ./programs/eza.nix
        ./programs/fish.nix
        ./programs/fzf.nix
        ./programs/ghostty.nix
        ./programs/git.nix
        ./programs/helix.nix
        ./programs/index.nix
        ./programs/obs-studio.nix
        ./programs/starship.nix
        ./programs/yazi.nix
        ./programs/zoxide.nix
        ./programs/chrome.nix
        ./programs/fuzzel.nix
        ./programs/hyprlock.nix
        ./programs/hyprpanel.nix
        ./programs/spicetify.nix
        ./programs/vscode.nix
        ./programs/waybar.nix
        ./programs/wlogout.nix
    ];
}
