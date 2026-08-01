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
        allow id 1d6b:0002 serial "0000:02:00.0" name "xHCI Host Controller" hash "4+i1fOQzh6/CdbdfiwrmdTYf8TLnLkUDuN34mexLwrg=" parent-hash "/1e+oO/+QiBM87zSY7rDiPm4h+kOVFNNTkeJA9MoRos=" via-port "usb1" with-interface 09:00:00
        allow id 1d6b:0003 serial "0000:02:00.0" name "xHCI Host Controller" hash "ViuugLRua/aPlAvgkXniQWreBpkM4XpeLtv3FPTwTSk=" parent-hash "/1e+oO/+QiBM87zSY7rDiPm4h+kOVFNNTkeJA9MoRos=" via-port "usb2" with-interface 09:00:00
        allow id 1d6b:0002 serial "0000:0b:00.3" name "xHCI Host Controller" hash "TrEQZkga/umqtek+QDHj31Ymjb6xG1N177/tn/x3Wwo=" parent-hash "HYUOOWtH2SmhNDgrVquPq/YUStPUYo6SumTyP8wwEFk=" via-port "usb3" with-interface 09:00:00
        allow id 1d6b:0003 serial "0000:0b:00.3" name "xHCI Host Controller" hash "ZqN/My4EyNiCWZdGdPH5rFMhfQthYbnRGW1/I0aO13s=" parent-hash "HYUOOWtH2SmhNDgrVquPq/YUStPUYo6SumTyP8wwEFk=" via-port "usb4" with-interface 09:00:00

        allow id 0c76:1717 serial "" name "PD100U" hash "zgDkpezTrv4ayAcgqTatQk60oBbFvFTTQ4Y6CNM7Xjc=" parent-hash "4+i1fOQzh6/CdbdfiwrmdTYf8TLnLkUDuN34mexLwrg=" with-interface { 01:01:00 01:02:00 01:02:00 01:02:00 03:00:00 } with-connect-type "hotplug"

        allow  id 2fc6:f076 serial "XRFW220922" name "Truthear DAC" hash "F2aHxdsQqQwRagxqW18TcqCpCzxDDw0jVXJTe9FAGd4=" parent-hash "TrEQZkga/umqtek+QDHj31Ymjb6xG1N177/tn/x3Wwo=" with-interface { 01:01:20 01:02:20 01:02:20 01:02:20 01:02:20 01:02:20 03:00:00 }

        allow id 373b:1054 serial "MAD HE" name "MAD60" hash "XppmHLlT4oTb0gZMbrUScq56L2/xLSSHl2n4vaY8M2o=" parent-hash "4+i1fOQzh6/CdbdfiwrmdTYf8TLnLkUDuN34mexLwrg=" with-interface { 03:01:01 03:00:00 03:00:00 } with-connect-type "hotplug"

        allow id 373b:11e4 serial "541505796617" name "ATK F1 ULTIMATE 2.0" hash "4T027m0K3np+TgKZ4brtHYfurS7Uivzm0+dXM/LX+O4=" parent-hash "TrEQZkga/umqtek+QDHj31Ymjb6xG1N177/tn/x3Wwo=" with-interface { 03:01:02 03:00:00 03:01:01 }
        allow id 373b:11d9 serial "541505796617" name "Wireless mouse 8k dongle-L" hash "3zJx5uzpsz8TYrb1g0eygMa03vk2Bzr0zx1BdS8z4eo=" parent-hash "TrEQZkga/umqtek+QDHj31Ymjb6xG1N177/tn/x3Wwo=" with-interface { 03:01:02 03:00:00 03:01:01 }

        allow id 04b4:2412 serial "" name "Flydigi VADER4" hash "I3RRGbstGY6y1ER1aUCl3ckbo071pbOkgrqAFdH/qZs=" parent-hash "TrEQZkga/umqtek+QDHj31Ymjb6xG1N177/tn/x3Wwo=" with-interface { 03:00:00 03:01:02 03:00:00 03:00:00 }
        allow id 04b4:2412 serial "" name "Flydigi VADER4" hash "3q9HEMAqD6NOuHwznrPzBUyux6282RkGzGLgr6mkQdg=" parent-hash "TrEQZkga/umqtek+QDHj31Ymjb6xG1N177/tn/x3Wwo=" with-interface { 03:00:00 03:01:02 03:00:00 03:00:00 }

        allow id 2e8a:000f serial "6FA4907EDC39FFE8" name "RP2350 Boot" hash "gF5icqRytF6XYM7HlhXGzcMUs4AbGMn4OPqUj4JAEMs=" parent-hash "4+i1fOQzh6/CdbdfiwrmdTYf8TLnLkUDuN34mexLwrg=" with-interface { 08:06:50 ff:00:00 } with-connect-type "hotplug"
        allow id 1050:0116 serial "6FA4907EDC39FFE8" name "Pico" hash "/C31d4t7YKrwPay/A3IU5M0Tr3PbHO3sIu1qymHx0Do=" parent-hash "4+i1fOQzh6/CdbdfiwrmdTYf8TLnLkUDuN34mexLwrg=" with-interface { 03:00:00 03:00:00 0b:00:00 ff:00:00 } with-connect-type "hotplug"

        allow id 0bda:8771 serial "00E04C239908" name "Bluetooth Radio" hash "v3zJSo7IQVijGzWwq+b5wm8FbDUeVm958kyPPg1HsT4=" parent-hash "4+i1fOQzh6/CdbdfiwrmdTYf8TLnLkUDuN34mexLwrg=" with-interface { e0:01:01 e0:01:01 e0:01:01 e0:01:01 e0:01:01 e0:01:01 e0:01:01 } with-connect-type "hotplug"
      '';
    };
  };
}
