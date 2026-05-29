_: {
  services = {
    logind = {
      settings = {
        Login = {
          NAutoVTs = 2;
          ReserveVT = 2;
        };
      };
    };
  };
}
