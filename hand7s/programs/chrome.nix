{pkgs, ...}: {
  programs = {
    chromium = {
      package = pkgs.google-chrome.override {
        commandLineArgs = [
          "--enable-features=AcceleratedVideoEncoder,VaapiIgnoreDriverChecks,Vulkan,DefaultANGLEVulkan,VulkanFromANGLE,VaapiIgnoreDriverChecks,VaapiVideoDecoder,PlatformHEVCDecoderSupport,UseMultiPlaneFormatForHardwareVideo,SkiaGraphite"
          "--ignore-gpu-blocklist"
          "--enable-zero-copy"
        ];
      };
    };
  };
}
