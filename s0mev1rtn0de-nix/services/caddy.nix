{pkgs, ...}: {
  services = {
    caddy = {
      enable = true;

      package = pkgs.caddy.withPlugins {
        plugins = [
          "github.com/mholt/caddy-l4@v0.0.0-20250902102621-4a517a98d7fa"
          "github.com/caddy-dns/cloudflare@v0.2.1"
        ];
        hash = "sha256-1/jRWotKCvx7QncjVSVGYXb2gAmIiokC/ZbCUelG5Rc=";
      };

      globalConfig = ''
        debug
        email me@hand7s.org

        acme_ca https://acme-v02.api.letsencrypt.org/directory

      '';

      # acme_ca https://api.zerossl.com/directory

      virtualHosts = {
        "hand7s.org" = {
          extraConfig = ''

            respond "hi! :D WIP btw"
          '';
        };

        "git.hand7s.org" = {
          extraConfig = ''

            reverse_proxy ${homeIP}:53350
          '';
        };

        "bin.hand7s.org" = {
          extraConfig = ''

            reverse_proxy ${homeIP}:80
          '';
        };

        "zitadel.hand7s.org" = {
          extraConfig = ''

            reverse_proxy ${homeIP}:8443
          '';
        };
      };
    };
  };
}
