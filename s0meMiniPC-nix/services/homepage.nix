{...}: {
  services = {
    homepage-dashboard = {
      enable = true;
      listenPort = 8080;

      settings = {
        title = "hand7s homepage";
        description = "duh";
        theme = "dark";
        background = "https://w.wallhaven.cc/full/1q/wallhaven-1q87xv.png";
        color = "violet";
        headerStyle = "boxed";

        layout = [
          {
            Dev = {
              iconsOnly = true;
            };
          }
        ];
      };

      bookmarks = [
        {
          Dev = [
            {
              GitHub = [
                {
                  abbr = "GH";
                  href = "https://github.com/";
                }
              ];
            }

            {
              Forgejo = [
                {
                  abbr = "Forge";
                  href = "https://git.hand7s.org/";
                }
              ];
            }

            {
              PivateBin = [
                {
                  abbr = "PB";
                  href = "https://bin.hand7s.org/";
                }
              ];
            }
          ];
        }
      ];

      services = [
      ];

      widgets = [
        {
          greeting = {
            text_size = "xl";
            text = "Hi, hand7s.";
          };
        }

        {
          search = {
            provider = "google";
            target = "_blank";
            focus = true;
          };
        }

        {
          resources = {
            cpu = true;
            memory = true;
            disk = "/";
            cputemp = true;
            uptime = true;
            units = "metric";
            refresh = 3000;
            network = true;
          };
        }
      ];
    };
  };
}
