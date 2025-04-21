{
    config,
    ...
}: {
    system = {
        stateVersion = config.system.nixos.release;
    };
}