{
  description = "hand7s'es flake";

  nixConfig = {
    max-jobs = "auto";
    builders = "";
    require-sigs = true;
    sandbox = true;
    sandbox-fallback = false;
    auto-optimise-store = true;

    allowed-users = [
      "@wheel"
    ];

    trusted-users = [
      "root"
      "@wheel"
    ];

    experimental-features = [
      "nix-command"
      "flakes"
    ];

    extra-substituters = [
      "https://cache.nixos.org"
      "https://nix-community.cachix.org"
      "https://chaotic-nyx.cachix.org"
      "https://hyprland.cachix.org"
      "https://devenv.cachix.org"
      "https://ghostty.cachix.org"
      "https://yazi.cachix.org"
      "https://helix.cachix.org"
      "https://zellij.cachix.org"
      "https://attic.xuyh0120.win/lantian"
    ];

    extra-trusted-public-keys = [
      "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
      "devenv.cachix.org-1:w1cLUi8dv3hnoSPGAuibQv+f9TZLr6cv/Hm9XgU50cw="
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
      "chaotic-nyx.cachix.org-1:HfnXSw4pj95iI/n17rIDy40agHj12WfF+Gqk6SonIT8="
      "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="
      "ghostty.cachix.org-1:QB389yTa6gTyneehvqG58y0WnHjQOqgnA+wBnpWWxns="
      "helix.cachix.org-1:ejp9KQpR1FBI2onstMQ34yogDm4OgU2ru6lIwPvuCVs="
      "yazi.cachix.org-1:Dcdz63NZKfvUCbDGngQDAZq6kOroIrFoyO064uvLh8k="
      "zellij.cachix.org-1:6W2+Lx/QQ7MQh397mNaPZ+u7HujWDP5VqnwEQVdX1QI="
      "lantian:EeAUQ+W+6r7EtwnmYjeVwx5kOGEBpjlBfPlzGlTNvHc="
    ];
  };

  inputs = {
    "actions-nix" = {
      flake = true;
      type = "github";
      owner = "nialov";
      repo = "actions.nix";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };

        "flake-parts" = {
          follows = "flake-parts";
        };
      };
    };

    "agenix" = {
      flake = true;
      type = "github";
      owner = "yaxitech";
      repo = "ragenix";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };

    "agenix-rekey" = {
      flake = true;
      type = "github";
      owner = "oddlama";
      repo = "agenix-rekey";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };

    "ayugram-desktop" = {
      flake = true;
      type = "github";
      owner = "ndfined-crp";
      repo = "ayugram-desktop";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };

    "cachix" = {
      flake = true;
      type = "github";
      owner = "cachix";
      repo = "cachix";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };

    "chaotic" = {
      flake = true;
      type = "github";
      owner = "chaotic-cx";
      repo = "nyx";
      ref = "nyxpkgs-unstable";

      inputs = {
        "home-manager" = {
          follows = "home-manager";
        };
      };
    };

    "deploy-rs" = {
      flake = true;
      type = "github";
      owner = "serokell";
      repo = "deploy-rs";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };

    "devenv" = {
      flake = true;
      type = "github";
      owner = "cachix";
      repo = "devenv";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };

    "devenv-root" = {
      flake = false;
      url = "file+file:///dev/null";
    };

    "disko" = {
      flake = true;
      type = "github";
      owner = "nix-community";
      repo = "disko";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };

    "easy-hosts" = {
      flake = true;
      type = "github";
      owner = "tgirlcloud";
      repo = "easy-hosts";
    };

    "flake-parts" = {
      flake = true;
      type = "github";
      owner = "hercules-ci";
      repo = "flake-parts";
    };

    "finix" = {
      flake = true;
      type = "github";
      owner = "finix-community";
      repo = "finix";
    };

    "freesm" = {
      flake = true;
      type = "github";
      owner = "freesmteam";
      repo = "freesmlauncher";
    };

    "ghostty" = {
      flake = true;
      type = "github";
      owner = "ghostty-org";
      repo = "ghostty";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };

        "home-manager" = {
          follows = "home-manager";
        };
      };
    };

    "git-hooks-nix" = {
      flake = true;
      type = "github";
      owner = "cachix";
      repo = "git-hooks.nix";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };

    "hjem" = {
      flake = true;
      type = "github";
      owner = "feel-co";
      repo = "hjem";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };

    "hjem-rum" = {
      flake = true;
      type = "github";
      owner = "snugnug";
      repo = "hjem-rum";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };

        "hjem" = {
          follows = "hjem";
        };
      };
    };

    "helix" = {
      flake = true;
      type = "github";
      owner = "helix-editor";
      repo = "helix";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };

    "home-manager" = {
      flake = true;
      type = "github";
      owner = "nix-community";
      repo = "home-manager";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };

    "hyprland" = {
      flake = true;
      type = "github";
      owner = "hyprwm";
      repo = "Hyprland";
    };

    "impermanence" = {
      flake = true;
      type = "github";
      owner = "nix-community";
      repo = "impermanence";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };

        "home-manager" = {
          follows = "home-manager";
        };
      };
    };

    "lanzaboote" = {
      flake = true;
      type = "github";
      owner = "nix-community";
      repo = "lanzaboote";
      ref = "0403b4b7e8b2612657f0053a4c315e6c43eee9e6";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };

    "nekoflake" = {
      flake = true;
      type = "github";
      owner = "s0me1newithhand7s";
      repo = "nekoflake";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };

    "niri" = {
      flake = true;
      type = "github";
      owner = "sodiboo";
      repo = "niri-flake";
      ref = "main";
    };

    "nix-cachyos-kernel" = {
      flake = true;
      type = "github";
      owner = "xddxdd";
      repo = "nix-cachyos-kernel";
      ref = "release";
    };

    "nix-index-database" = {
      flake = true;
      type = "github";
      owner = "nix-community";
      repo = "nix-index-database";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };

    "nix-topology" = {
      flake = true;
      type = "github";
      owner = "oddlama";
      repo = "nix-topology";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };

    "nixos-anywhere" = {
      flake = true;
      type = "github";
      owner = "nix-community";
      repo = "nixos-anywhere";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };

    "nixos-avf" = {
      flake = true;
      type = "github";
      owner = "nix-community";
      repo = "nixos-avf";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };

    "nixos-cli" = {
      flake = true;
      type = "github";
      owner = "nix-community";
      repo = "nixos-cli";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };

    "nixos-wsl" = {
      flake = true;
      type = "github";
      owner = "nix-community";
      repo = "nixos-wsl";
      ref = "main";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };

    "nixpkgs" = {
      flake = true;
      type = "github";
      owner = "nixos";
      repo = "nixpkgs";
      ref = "nixos-unstable";
    };

    "noctalia" = {
      flake = true;
      type = "github";
      owner = "noctalia-dev";
      repo = "noctalia-shell";
      ref = "b16dc50250af05d5048ac454dbf4e898d1adcac0";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };

    "pinnacle" = {
      flake = true;
      type = "github";
      owner = "pinnacle-comp";
      repo = "pinnacle";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };

    "quickshell" = {
      flake = true;
      type = "git";
      url = "https://git.outfoxxed.me/quickshell/quickshell";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };

    "sops-nix" = {
      flake = true;
      type = "github";
      owner = "Mic92";
      repo = "sops-nix";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };

    "spicetify-nix" = {
      flake = true;
      type = "github";
      owner = "Gerg-L";
      repo = "spicetify-nix";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };

    "stylix" = {
      flake = true;
      type = "github";
      owner = "nix-community";
      repo = "stylix";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };

    "system-manager" = {
      flake = true;
      type = "github";
      owner = "numtide";
      repo = "system-manager";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };

    "treefmt-nix" = {
      flake = true;
      type = "github";
      owner = "numtide";
      repo = "treefmt-nix";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };

    "yazi" = {
      flake = true;
      type = "github";
      owner = "sxyazi";
      repo = "yazi";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };

    "zellij" = {
      flake = true;
      type = "github";
      owner = "a-kenji";
      repo = "zellij-nix";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };
  };

  outputs = inputs @ {self, ...}:
    inputs.flake-parts.lib.mkFlake {
      inherit
        inputs
        self
        ;
    } {
      debug = true;

      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "riscv64-linux"
      ];

      imports = [
        inputs."agenix-rekey".flakeModule
        inputs."disko".flakeModules.default
        inputs."treefmt-nix".flakeModule
        inputs."home-manager".flakeModules."home-manager"
        inputs."devenv".flakeModule
        inputs."actions-nix".flakeModules."default"
        inputs."easy-hosts".flakeModule
        inputs."nix-topology".flakeModule
      ];

      easy-hosts = {
        shared = {
          modules = [
            inputs."agenix".nixosModules."default"
            inputs."agenix-rekey".nixosModules."default"
            inputs."disko".nixosModules."disko"
            inputs."sops-nix".nixosModules."sops"
            inputs."nix-index-database".nixosModules."nix-index"
            inputs."nixos-cli".nixosModules."nixos-cli"
          ];

          specialArgs = {
            inherit
              (self)
              outputs
              ;

            inherit
              inputs
              self
              ;
          };
        };

        hosts = {
          "ada" = {
            arch = "x86_64";
            class = "nixos";
            deployable = true;

            modules =
              self.inputs."nixpkgs".lib.filesystem.listFilesRecursive "${self}/ada/"
              ++ [
                inputs."lanzaboote".nixosModules."lanzaboote"
                inputs."home-manager".nixosModules."default"
                inputs."stylix".nixosModules."stylix"
              ];

            tags = [
              "dekstop"
            ];
          };

          "isla" = {
            arch = "x86_64";
            class = "nixos";
            deployable = true;

            modules =
              self.inputs."nixpkgs".lib.filesystem.listFilesRecursive "${self}/isla"
              ++ [
                inputs."lanzaboote".nixosModules."lanzaboote"
                inputs."home-manager".nixosModules."default"
                inputs."stylix".nixosModules."stylix"
              ];

            tags = [
              "desktop"
            ];
          };

          "viola" = {
            arch = "x86_64";
            class = "nixos";
            deployable = true;

            modules =
              self.inputs."nixpkgs".lib.filesystem.listFilesRecursive "${self}/viola"
              ++ [
                inputs."lanzaboote".nixosModules."lanzaboote"
                inputs."home-manager".nixosModules."default"
                inputs."stylix".nixosModules."stylix"
              ];

            tags = [
              "desktop"
            ];
          };

          "wanda" = {
            arch = "x86_64";
            class = "nixos";
            deployable = true;

            modules =
              self.inputs."nixpkgs".lib.filesystem.listFilesRecursive "${self}/wanda"
              ++ [
                inputs."home-manager".nixosModules."default"
                inputs."stylix".nixosModules."stylix"
                inputs."nixos-wsl".nixosModules."default"
              ];

            tags = [
              "desktop"
              "wsl"
            ];
          };

          "florence" = {
            class = "iso";
          };

          "hazel" = {
            arch = "x86_64";
            class = "nixos";
            deployable = true;

            modules =
              self.inputs."nixpkgs".lib.filesystem.listFilesRecursive "${self}/kyra"
              ++ [
                inputs."impermanence".nixosModules."impermanence"
              ];

            tags = [
              "vps"
            ];
          };

          "lynn" = {
            arch = "x86_64";
            class = "nixos";
            deployable = true;

            modules =
              self.inputs."nixpkgs".lib.filesystem.listFilesRecursive "${self}/kyra"
              ++ [
                inputs."impermanence".nixosModules."impermanence"
              ];

            tags = [
              "vps"
            ];
          };

          "yara" = {
            arch = "x86_64";
            class = "nixos";
            deployable = true;

            modules =
              self.inputs."nixpkgs".lib.filesystem.listFilesRecursive "${self}/kyra"
              ++ [
                inputs."impermanence".nixosModules."impermanence"
              ];

            tags = [
              "vps"
            ];
          };
        };
      };

      flake = {
        nixosConfigurations = {
          "fawn" = inputs.finix.lib.finixSystem {
            inherit
              (
                self.inputs."nixpkgs"
              )
              lib
              ;

            specialArgs = {
              inherit
                (self)
                outputs
                ;

              inherit
                inputs
                ;
            };

            modules =
              inputs."nixpkgs".lib.attrValues inputs."finix".nixosModules
              ++ self.inputs."nixpkgs".lib.filesystem.listFilesRecursive "${self}/fawn"
              ++ [
                {
                  nixpkgs.pkgs = self.inputs."nixpkgs".legacyPackages.x86_64-linux;
                }
              ]
              ++ [
                inputs."hjem".finixModules."default"
              ];
          };
        };

        homeConfigurations = {
          "hand7s" = inputs.home-manager.lib.homeManagerConfiguration {
            pkgs = inputs.nixpkgs.legacyPackages.x86_64-linux;
            extraSpecialArgs = {
              osConfig.networking.hostName = "";
              inherit
                inputs
                self
                ;
            };

            modules = [
              "${self}/hand7s/standalone.nix"
              self.homeModules."baseline"
              inputs."stylix".homeModules."stylix"
              inputs."pinnacle".homeModules."default"
              (
                inputs."nixpkgs".lib.mkAliasOptionModule [
                  "wayland"
                  "windowManager"
                  "niri"
                ] [
                  "programs"
                  "niri"
                ]
              )
            ];
          };
        };

        homeModules = {
          "baseline" = {
            imports = [
              inputs."agenix".homeManagerModules."default"
              inputs."spicetify-nix".homeManagerModules."default"
              inputs."hyprland".homeManagerModules."default"
              inputs."chaotic".homeManagerModules."default"
              inputs."sops-nix".homeManagerModules."sops"
              inputs."nix-index-database".homeModules."nix-index"
              inputs."noctalia".homeModules."default"
              inputs."niri".homeModules."niri"
            ];
          };
        };
      };

      perSystem = {
        config,
        pkgs,
        ...
      }: {
        # agenix-rekey
        agenix-rekey = {
          agePackage = pkgs.rage;
        };

        # numtide/treefmt-nix, treefmt integrated into nix
        treefmt = {
          flakeFormatter = true;

          programs = {
            "alejandra" = {
              enable = true;
              priority = 1;
              includes = [
                "*.nix"
              ];
            };

            "statix" = {
              enable = true;
              priority = 1;
              includes = [
                "*.nix"
              ];
            };

            "deadnix" = {
              enable = true;
              priority = 1;
              includes = [
                "*.nix"
              ];
            };

            "typstyle" = {
              enable = true;
              priority = 2;
              includes = [
                "*.typ"
              ];
            };

            "mdformat" = {
              enable = true;
              priority = 2;
              includes = [
                "*.md"
              ];
            };
          };

          settings = {
            global = {
              on-unmatched = "warn";
              excludes = [
                "secrets/*"
                ".sops.yaml"
                ".gitignore"
              ];
            };
          };
        };

        # cachix/git-hooks-nix, pre-commit-hooks integrated into nix
        pre-commit = {
          check = {
            enable = true;
          };

          settings = {
            enable = true;
            package = pkgs.prek;
            gitPackage = pkgs.git;

            hooks = {
              "alejandra" = {
                enable = true;
                settings = {
                  verbosity = "quiet";
                  check = true;
                };
              };

              "deadnix" = {
                enable = true;
                settings = {
                  edit = false;
                };
              };

              "statix" = {
                enable = true;
              };

              "markdownlint" = {
                enable = true;
                package = pkgs.markdownlint-cli;
                excludes = [
                  "AGENTS.md"
                ];
              };

              "typstyle" = {
                enable = true;
              };

              "gitlint" = {
                enable = true;
              };
            };
          };
        };

        # cachix/devenv, basically a devShells, even better than numtide/devshells
        devenv = {
          shells = {
            "default" = {
              enterShell = config.pre-commit.shellHook;

              enterTest = ''
                prek run --all-files --fail-fast ;
              '';

              cachix = {
                enable = true;

                pull = [
                  "nix-community"
                  "chaotic-cx"
                  "hyprland"
                  "ghostty"
                  "devenv"
                  "zellij"
                  "helix"
                  "yazi"
                ];
              };

              packages =
                [
                  pkgs.cachix
                  config.treefmt.build.wrapper
                  config.agenix-rekey.package
                ]
                ++ config.pre-commit.settings.enabledPackages;
            };
          };
        };
      };
    };
}
