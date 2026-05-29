{pkgs, ...}: {
  programs = {
    retroarch = {
      enable = true;

      cores = {
        "mgba" = {
          enable = true;
          package = pkgs.libretro.mgba;
        };

        "dolphin" = {
          enable = true;
          package = pkgs.libretro.dolphin;
        };
      };

      settings = {
        menu_driver = "ozone";
        menu_show_advanced_settings = toString true;
        video_driver = "vulkan";
        video_vsync = toString true;
        video_fullscreen = toString true;
        libretro_directory = "~/.config/lib/libretro";
      };
    };
  };
}
