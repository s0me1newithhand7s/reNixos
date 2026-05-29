_: {
  services = {
    usbguard = {
      enable = true;
      dbus = {
        enable = true;
      };

      implicitPolicyTarget = "block";
      insertedDevicePolicy = "apply-policy";
      presentControllerPolicy = "apply-policy";
      presentDevicePolicy = "apply-policy";

      rules = ''
        allow id 1d6b:0002 serial "0000:02:00.0" name "xHCI Host Controller" with-interface 09:00:00
        allow id 1d6b:0003 serial "0000:02:00.0" name "xHCI Host Controller" with-interface 09:00:00
        allow id 1d6b:0002 serial "0000:0b:00.3" name "xHCI Host Controller" with-interface 09:00:00
        allow id 1d6b:0003 serial "0000:0b:00.3" name "xHCI Host Controller" with-interface 09:00:00

        allow id 0c76:1717 serial "" name "PD100U" with-interface { 01:01:00 01:02:00 01:02:00 01:02:00 03:00:00 }
        allow id 2fc6:f076 serial "XRFW220922" name "Truthear DAC" with-interface { 01:01:20 01:02:20 01:02:20 01:02:20 01:02:20 01:02:20 03:00:00 }

        allow id 373b:1054 serial "MAD HE" name "MAD60" with-interface { 03:01:01 03:00:00 03:00:00 }
        allow id 373b:11e4 serial "541505796617" name "ATK F1 ULTIMATE 2.0" with-interface { 03:01:02 03:00:00 03:01:01 }
        allow id 373b:11d9 serial "541505796617" name "Wireless mouse 8k dongle-L" with-interface { 03:01:02 03:00:00 03:01:01 }

        allow id 04b4:2412 serial "" name "Flydigi VADER4" with-interface { 03:00:00 03:01:02 03:01:02 03:01:02 03:00:00 }
        allow id 04b4:2412 serial "" name "Flydigi VADER4" with-interface { 03:00:00 03:01:02 03:00:00 03:00:00 }

        allow id 20a0:4211 serial "F0967CD8C39F2AE0" name "Pico" with-interface { 03:00:00 03:00:00 ff:00:00 }

        allow id 0bda:8771 serial "00E04C239908" name "Bluetooth Radio" with-interface { e0:01:01 0e:01:01 03:01:01 03:01:02 03:01:01 03:01:01 03:01:01 03:01:01 }
      '';
    };
  };
}
