{
  programs.nixvim.plugins.conform-nvim = {
    enable = true;
    settings = {
      format_on_save = {
        enabled = true;
        timeoutMs = 1000;
        lspFallback = true;
      };
      formatters_by_ft = {
        lua = [ "stylua" ];
        javascript = [ "prettier" ];
        typescript = [ "prettier" ];
        json = [ "prettier" ];
        html = [ "prettier" ];
        css = [ "prettier" ];
        nix = [ "nixpkgs-fmt" ];
        python = [ "black" ];
      };
    };      
  };
}
