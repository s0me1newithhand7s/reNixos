{
    ...
}: {
    programs = {
        starship = {
            enable = true;
            enableFishIntegration = true;
            settings = {
                add_newline = true;

                format = ''
                    [╭──╼](bold blue) $hostname $os
                    [┆](bold blue) $directory$git_branch$git_commit$git_state$git_metrics$git_status
                    [╰─>](bold blue) 
                '';

                right_format = ''$cmd_duration ($character) at ❗$time'';

                os = {
                    format = "on [($name $codename$version$edition $symbol )]($style)";
                    style = "bold blue";
                    disabled = false;
                };

                hostname = {
                    ssh_only = false;
                    format = "[$hostname]($style)";
                    style = "bold red";
                    disabled = false;
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
