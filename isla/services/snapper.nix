_: {
  services = {
    snapper = {
      snapshotInterval = "daily";
      cleanupInterval = "daily";
      persistentTimer = true;
      snapshotRootOnBoot = true;

      configs = {
        "root" = {
          ALLOW_GROUPS = [
            "wheel"
          ];

          SUBVOLUME = "/";
          NUMBER_LIMIT = "2-4";
          NUMBER_LIMIT_IMPORTANT = "2-4";
          TIMELINE_CREATE = true;
          TIMELINE_CLEANUP = true;
          TIMELINE_LIMIT_HOURLY = 4;
          TIMELINE_LIMIT_DAILY = 0;
          TIMELINE_LIMIT_WEEKLY = 0;
          TIMELINE_LIMIT_MONTHLY = 0;
          TIMELINE_LIMIT_YEARLY = 0;
        };

        "home" = {
          ALLOW_GROUPS = [
            "wheel"
          ];

          SUBVOLUME = "/home";
          NUMBER_LIMIT = "2-4";
          NUMBER_LIMIT_IMPORTANT = "2-4";
          TIMELINE_CREATE = true;
          TIMELINE_CLEANUP = true;
          TIMELINE_LIMIT_HOURLY = 4;
          TIMELINE_LIMIT_DAILY = 0;
          TIMELINE_LIMIT_WEEKLY = 0;
          TIMELINE_LIMIT_MONTHLY = 0;
          TIMELINE_LIMIT_YEARLY = 0;
        };
      };
    };
  };
}
