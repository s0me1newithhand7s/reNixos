{lib, ...}: {
  imports = [
    (
      lib.mkAliasOptionModule [
        "boot"
        "loader"
        "limine"
      ] [
        "programs"
        "limine"
      ]
    )
  ];

  boot = {
    loader = {
      limine = {
        enable = true;
        maxGenerations = 2;
      };
    };
  };
}
