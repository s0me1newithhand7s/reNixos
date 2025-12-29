{...}: {
  xdg = {
    mime = {
      enable = true;
      defaultApplications = {
        "x-scheme-handler/http" = "google-chrome.desktop";
        "x-scheme-handler/https" = "google-chrome.desktop";
      };
    };
  };
}
