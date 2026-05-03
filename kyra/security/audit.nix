_: {
  security = {
    audit = {
      enable = true;
      failureMode = 2;
      rules = [
        "-a always,exit -F arch=b64 -S mount,umount2,swapon,swapoff -k fs_ops"
        "-a always,exit -F arch=b64 -S init_module,delete_module,finit_module -k kernel_mods"
        "-a always,exit -F arch=b64 -S bind,connect,accept -F success=0 -k net_violations"
        "-w /run/secrets -p r -k secret_read"
      ];
    };

    auditd = {
      enable = true;
      settings = {
        flush = "incremental_async";
        freq = 50;
        max_log_file = 10;
        num_logs = 3;
        max_log_file_action = "rotate";
        admin_space_left_action = "suspend";
        disk_full_action = "suspend";
        disk_error_action = "suspend";
        log_format = "ENRICHED";
      };
    };
  };
}
