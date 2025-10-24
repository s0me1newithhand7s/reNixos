{self, ...}: {
    imports = [
        "${self}/hand7s/fonts/fonts.nix"
        "${self}/hand7s/options/gui.nix"

        "${self}/hand7s/wayland/hyprland.nix"
        "${self}/hand7s/wayland/river.nix"
        "${self}/hand7s/wayland/sway.nix"

        "${self}/hand7s/home/defaults.nix"
        "${self}/hand7s/home/gui.nix"
        "${self}/hand7s/home/keyboard.nix"
        "${self}/hand7s/home/packages.nix"
        "${self}/hand7s/home/shellAliases.nix"

        "${self}/hand7s/nixpkgs/config.nix"
        "${self}/hand7s/nixpkgs/overlays.nix"

        "${self}/hand7s/services/hypridle.nix"
        "${self}/hand7s/services/swayidle.nix"
        "${self}/hand7s/services/kdeconnect.nix"

        "${self}/hand7s/systemd/hyprpolkitagent-service.nix"

        "${self}/hand7s/programs/bat.nix"
        "${self}/hand7s/programs/eza.nix"
        "${self}/hand7s/programs/fish.nix"
        "${self}/hand7s/programs/fzf.nix"
        "${self}/hand7s/programs/ghostty.nix"
        "${self}/hand7s/programs/git.nix"
        "${self}/hand7s/programs/mpv.nix"
        "${self}/hand7s/programs/helix.nix"
        "${self}/hand7s/programs/index.nix"
        "${self}/hand7s/programs/obs-studio.nix"
        "${self}/hand7s/programs/starship.nix"
        "${self}/hand7s/programs/firefox.nix"
        "${self}/hand7s/programs/swaylock.nix"
        "${self}/hand7s/programs/yazi.nix"
        "${self}/hand7s/programs/zoxide.nix"
        "${self}/hand7s/programs/chrome.nix"
        "${self}/hand7s/programs/hyprlock.nix"
        "${self}/hand7s/programs/hyprpanel.nix"
        "${self}/hand7s/programs/spicetify.nix"
        "${self}/hand7s/programs/vscode.nix"
        "${self}/hand7s/programs/zellij.nix"
        "${self}/hand7s/programs/zed-editor.nix"
        "${self}/hand7s/programs/direnv.nix"
        "${self}/hand7s/programs/kitty.nix"
        "${self}/hand7s/programs/noctalia.nix"
    ];
}
