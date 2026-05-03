{pkgs, ...}: {
  environment = {
    memoryAllocator = {
      provider = pkgs.graphene-hardened;
    };
  };
}
