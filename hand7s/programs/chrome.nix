{
    pkgs,
    ...
}: {
    programs = {
        chromium = {
            package = (
                pkgs.google-chrome.override {
                    commandLineArgs = [
                        "--enable-features=AcceleratedVideoEncoder,VaapiIgnoreDriverChecks,Vulkan,DefaultANGLEVulkan,VulkanFromANGLE"
                        "--enable-features=VaapiIgnoreDriverChecks,VaapiVideoDecoder,PlatformHEVCDecoderSupport"
                        "--enable-features=UseMultiPlaneFormatForHardwareVideo"
                        "--enable-features=SkiaGraphite"
                        "--enable-unsafe-webgpu"
                        "--ignore-gpu-blocklist"
                        "--enable-zero-copy"
                    ];
                }  
            );
        };
    };
}
