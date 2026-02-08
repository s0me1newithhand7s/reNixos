_: {
  programs = {
    starship = {
      enable = true;
      enableFishIntegration = true;
      settings = {
        add_newline = true;

        format = ''
          [╭──╼](bold blue) $username at $hostname on $os
          [┆](bold blue) $directory$git_branch$git_commit$git_state$git_metrics$git_status
          [╰─>](bold blue) '';

        right_format = ''$cmd_duration ($character) at ❗$time'';

        os = {
          format = "[($name $codename$version$edition $symbol )]($style)";
          style = "bold blue";
          disabled = false;
        };

        hostname = {
          ssh_only = false;
          format = "[$hostname]($style)";
          style = "bold red";
          disabled = false;
        };

        username = {
          show_always = true;
          disabled = false;
          format = "[$user]($style)";
          style_user = "bold green";
        };

        character = {
          success_symbol = "[✓](bold green)";
          error_symbol = "[✗](bold red)";
        };

        time = {
          disabled = false;
          format = " [$time]($style)";
          time_format = "%H:%M";
          utc_time_offset = "local";
          style = "pale blue";
        };

        cmd_duration = {
          disabled = false;
          min_time = 250;
          show_milliseconds = false;
          show_notifications = false;
          format = "was [$duration](bold green)";
        };
      };
    };
  };
}
