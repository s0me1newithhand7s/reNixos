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
      "https://cache.garnix.io"
      "https://nix-community.cachix.org"
      "https://chaotic-nyx.cachix.org"
      "https://hyprland.cachix.org"
      "https://devenv.cachix.org"
      "https://hydra.nix-community.org"
      "https://attic.xuyh0120.win/lantian"
    ];

    extra-trusted-public-keys = [
      "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
      "cache.garnix.io:CTFPyKSLcx5RMJKfLo5EEPUObbA78b0YQ2DTCJXqr9g="
      "devenv.cachix.org-1:w1cLUi8dv3hnoSPGAuibQv+f9TZLr6cv/Hm9XgU50cw="
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
      "chaotic-nyx.cachix.org-1:HfnXSw4pj95iI/n17rIDy40agHj12WfF+Gqk6SonIT8="
      "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
      "lantian:EeAUQ+W+6r7EtwnmYjeVwx5kOGEBpjlBfPlzGlTNvHc="
    ];
  };

  inputs = {
    "agenix" = {
      flake = true;
      type = "github";
      owner = "yaxitech";
      repo = "ragenix";
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
    };

    "cachix" = {
      flake = true;
      type = "github";
      owner = "cachix";
      repo = "cachix";
    };

    "chaotic" = {
      flake = true;
      type = "github";
      owner = "chaotic-cx";
      repo = "nyx";
      ref = "nyxpkgs-unstable";
    };

    "deploy-rs" = {
      flake = true;
      type = "github";
      owner = "serokell";
      repo = "deploy-rs";
    };

    "devenv" = {
      flake = true;
      type = "github";
      owner = "cachix";
      repo = "devenv";
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

    "flake-parts" = {
      flake = true;
      type = "github";
      owner = "hercules-ci";
      repo = "flake-parts";
    };

    "freesm" = {
      flake = true;
      type = "github";
      owner = "freesmteam";
      repo = "freesmlauncher";
    };

    "fenix" = {
      flake = true;
      type = "github";
      owner = "nix-community";
      repo = "fenix";
    };

    "finix" = {
      flake = true;
      type = "github";
      owner = "finix-community";
      repo = "finix";
    };

    "github-actions-nix" = {
      flake = true;
      type = "github";
      owner = "synapdeck";
      repo = "github-actions-nix";
    };

    "git-hooks-nix" = {
      flake = true;
      type = "github";
      owner = "cachix";
      repo = "git-hooks.nix";
    };

    "hjem" = {
      flake = true;
      type = "github";
      owner = "feel-co";
      repo = "hjem";
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

    "homebrew-bundle" = {
      flake = false;
      type = "github";
      owner = "homebrew";
      repo = "homebrew-bundle";
    };

    "homebrew-cask" = {
      flake = false;
      type = "github";
      owner = "homebrew";
      repo = "homebrew-cask";
    };

    "homebrew-core" = {
      flake = false;
      type = "github";
      owner = "homebrew";
      repo = "homebrew-core";
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
    };

    "lanzaboote" = {
      flake = true;
      type = "github";
      owner = "nix-community";
      repo = "lanzaboote";
      ref = "v0.4.2";

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
    };

    "nix-darwin" = {
      flake = true;
      type = "github";
      owner = "LnL7";
      repo = "nix-darwin";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };

    "nix-cachyos-kernel" = {
      flake = true;
      type = "github";
      owner = "xddxdd";
      repo = "nix-cachyos-kernel";
      ref = "release";
    };

    "nix-homebrew" = {
      flake = true;
      type = "github";
      owner = "zhaofengli";
      repo = "nix-homebrew";
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

    "nixos-avf" = {
      flake = true;
      type = "github";
      owner = "nix-community";
      repo = "nixos-avf";
    };

    "nixos-anywhere" = {
      flake = true;
      type = "github";
      owner = "nix-community";
      repo = "nixos-anywhere";
    };

    "nixos-cli" = {
      flake = true;
      type = "github";
      owner = "nix-community";
      repo = "nixos-cli";
    };

    "nixos-wsl" = {
      flake = true;
      type = "github";
      owner = "nix-community";
      repo = "nixos-wsl";
      ref = "main";
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

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };

        "quickshell" = {
          follows = "quickshell";
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
      ];

      imports = [
        inputs."agenix-rekey".flakeModule
        inputs."disko".flakeModules.default
        inputs."treefmt-nix".flakeModule
        inputs."home-manager".flakeModules."home-manager"
        inputs."git-hooks-nix".flakeModule
        inputs."devenv".flakeModule
        inputs."github-actions-nix".flakeModule
      ];

      flake = let
        inherit
          (inputs."nixpkgs".lib)
          nixosSystem
          filesystem
          genAttrs
          optionals
          elem
          ;

        makeModules = modulesList:
          map (
            {
              input,
              opt ? "default",
            }:
              inputs.${input}.nixosModules.${opt}
          )
          modulesList;

        defaultHost = {
          name,
          arch ? "x86_64-linux",
          ...
        }:
          nixosSystem {
            system = let
              arches = {
                "mabel" = "aarch64-linux";
                "blossom" = "riscv64-linux";
              };
            in
              arches.${name} or arch;

            specialArgs = {
              inherit
                inputs
                self
                ;
            };

            modules =
              [
                "${self}/${name}"
              ]
              ++ defaultModules
              ++ optionals (
                name == "wanda"
              )
              extraModules.wanda
              ++ optionals (
                name == "mabel"
              )
              extraModules.mabel
              ++ optionals (
                elem name [
                  "hazel"
                  "lynn"
                  "yara"
                  "ivy"
                  "mel"
                ]
              ) (
                extraModules.kyra ++ filesystem.listFilesRecursive "${self}/kyra/"
              );
          };

        defaultModules = makeModules [
          {
            input = "agenix";
          }

          {
            input = "agenix-rekey";
          }

          {
            input = "disko";
            opt = "disko";
          }

          {
            input = "home-manager";
          }

          {
            input = "stylix";
            opt = "stylix";
          }

          {
            input = "sops-nix";
            opt = "sops";
          }

          {
            input = "lanzaboote";
            opt = "lanzaboote";
          }

          {
            input = "nix-index-database";
            opt = "nix-index";
          }

          {
            input = "nixos-cli";
            opt = "nixos-cli";
          }
        ];

        extraModules = {
          wanda = makeModules [
            {
              input = "nixos-wsl";
            }
          ];

          mabel = makeModules [
            {
              input = "nixos-avf";
              opt = "avf";
            }
          ];

          kyra = makeModules [
            {
              input = "impermanence";
              opt = "impermanence";
            }
          ];
        };

        defaultSystems =
          genAttrs [
            "ada"
            "isla"
            "viola"
            "mabel"
            "wanda"
            "florence"
            "hazel"
            "lynn"
            "yara"
            "ivy"
            "mel"
          ] (
            name:
              defaultHost {
                inherit
                  name
                  ;
              }
          );
      in {
        nixosConfigurations =
          defaultSystems
          // {
            # olive, blossom and maybe  gonna be routers and etc

            "fawn" = inputs.finix.lib.finixSystem {
              inherit (self.inputs.nixpkgs) lib;
              specialArgs = {
                inherit
                  inputs
                  ;
              };

              modules = [
              ];
            };
          };

        # home-manager
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
              inputs."agenix".homeManagerModules."default"
              inputs."spicetify-nix".homeManagerModules."default"
              inputs."hyprland".homeManagerModules."default"
              inputs."chaotic".homeManagerModules."default"
              inputs."sops-nix".homeManagerModules."sops"
              inputs."nix-index-database".homeModules."nix-index"
              inputs."noctalia".homeModules."default"
              inputs."stylix".homeModules."stylix"
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
          agePackage = pkgs.ragenix;
        };

        # numtide/treefmt-nix, treefmt integrated into nix
        treefmt = {
          flakeFormatter = true;
          flakeCheck = true;

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

              devenv = {
                root = toString /home/hand7s/Projects/flake;
              };

              packages =
                [
                  pkgs.just
                  config.treefmt.build.wrapper
                  config.agenix-rekey.package
                ]
                ++ config.pre-commit.settings.enabledPackages;
            };
          };
        };

        # synapdeck/github-actions-nix, declaretive gha
        githubActions = {
          enable = true;

          workflows = {
            "flake_update" = {
              name = "flake lock updater";
              on = {
                workflowDispatch = {};
                schedule = [
                  {
                    cron = "0 0 * * *";
                  }
                ];
              };

              jobs = {
                "locking" = {
                  name = "flake.lock update";
                  runsOn = "ubuntu-latest";
                  continueOnError = false;
                  permissions = "write-all";
                  steps = [
                    {
                      name = "checkout";
                      uses = "actions/checkout@v6";
                    }

                    {
                      name = "nix install";
                      uses = "DeterminateSystems/nix-installer-action@v21";
                    }

                    {
                      name = "flake.lock check";
                      uses = "DeterminateSystems/flake-checker-action@v12";
                      with_ = {
                        fail-mode = true;
                      };
                    }

                    {
                      name = "flake.lock update";
                      uses = "DeterminateSystems/update-flake-lock@v28";
                      with_ = {
                        pr-title = "Update `flake.lock` GitHub Action";
                        pr-assignees = "s0me1newithhand7s";
                        pr-reviewers = "s0me1newithhand7s";
                        pr-labels = ''
                          "CI/CD"
                        '';
                      };
                    }
                  ];
                };
              };
            };

            "fmt_run" = {
              name = "flake_format";
              on = {
                push = {};

                workflowDispatch = {
                  types = [
                    "opened"
                    "edited"
                    "synchronize"
                    "reopened"
                  ];
                };
              };

              jobs = {
                "fmt" = {
                  runsOn = "ubuntu-latest";
                  continueOnError = false;
                  permissions = "write-all";
                  steps = [
                    {
                      name = "checkout";
                      uses = "actions/checkout@v6";
                    }

                    {
                      name = "nix install";
                      uses = "DeterminateSystems/nix-installer-action@v21";
                    }

                    {
                      name = "flake.lock check";
                      uses = "DeterminateSystems/flake-checker-action@v12";
                      with_ = {
                        fail-mode = true;
                      };
                    }

                    {
                      name = "formatter run";
                      run = ''
                        nix develop -c prek run -a
                      '';
                    }
                  ];
                };
              };
            };
          };
        };
      };
    };
}
