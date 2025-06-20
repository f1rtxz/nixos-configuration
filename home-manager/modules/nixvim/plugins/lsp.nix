{
  programs.nixvim = {
    plugins = {
      lsp = {
        enable = true;
        servers = {
          pyright.enable = true;
          ts_ls.enable = true;
          clangd.enable = true;
        };
        keymaps = {
          silent = true;
          lspBuf = {
            gd = "definition";
            K = "hover";
          };
        };
      };
    };
  };
}
