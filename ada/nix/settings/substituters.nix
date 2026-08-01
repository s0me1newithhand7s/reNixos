_: {
  nix = {
    settings = {
      substituters = [
        # cache.nixos.org
        "https://cache.nixos.org"
        # "https://mirror.yandex.ru/nixos"

        # cachix
        "https://nix-community.cachix.org"
        "https://chaotic-nyx.cachix.org"
        "https://hyprland.cachix.org"
        "https://devenv.cachix.org"
        "https://ghostty.cachix.org"
        "https://yazi.cachix.org"
        "https://helix.cachix.org"
        "https://zellij.cachix.org"

        # cachyos kernels
        "https://attic.xuyh0120.win/lantian"
      ];
    };
  };
}
