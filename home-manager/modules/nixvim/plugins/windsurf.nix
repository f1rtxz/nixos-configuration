{
  programs.nixvim = {
    plugins = {
      windsurf-nvim = {
        enable = true;
        settings = {
          enable_cmp_source = false;
          virtual_text = {
            enabled = true;
            manual = false;
            virtual_text_priority = 65535;
            map_keys = true;
            key_bindings = {
              accept = "<Tab>";
            };
          }; 
        };
      };
    };
  };
}
