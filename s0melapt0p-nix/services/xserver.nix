{
    lib,
    pkgs, 
    ... 
}: {
    services = { 
        xserver = { 
            display = lib.mkForce 0;
            enable = true; 
            tty = 7;
            
            excludePackages = with pkgs; [ 
                xterm
            ];

            
            videoDrivers = [
                "i915"
            ]; 
            
            xkb = {
                layout = "us, ru"; 
                variant = "qwerty";
                options = "grp:caps_toggle";
            }; 
        };
    };
}

