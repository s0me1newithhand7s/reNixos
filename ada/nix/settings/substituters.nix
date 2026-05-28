_: {
  nix = {
    settings = {
      substituters = [
        # cache.nixos.org
        "https://cache.nixos.org"
        # "https://mirror.yandex.ru/nixos"

        # cache.garnix.org
        "https://cache.garnix.io"

        # cachix
        "https://nix-community.cachix.org"
        "https://chaotic-nyx.cachix.org"
        "https://hyprland.cachix.org"
        "https://devenv.cachix.org"

        # nix-community
        "https://hydra.nix-community.org"

        # cachyos kernels
        "https://attic.xuyh0120.win/lantian"
      ];
    };
  };
}
