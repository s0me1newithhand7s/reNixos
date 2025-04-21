{
    pkgs,
    ... 
}: {
    hardware = {          
        graphics = {
	        enable = true;
            enable32Bit = true;
            extraPackages = with pkgs; [
                intel-vaapi-driver
            ];
            
            extraPackages32 = with pkgs; [
                intel-vaapi-driver
            ];
        };
    };
}
