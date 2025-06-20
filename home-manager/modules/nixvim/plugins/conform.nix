{
  programs.nixvim.plugins.conform = {
    enable = true;
    formatOnSave = {
      enabled = true;
      timeoutMs = 1000;
      lspFallback = true;
    };
    formattersByFt = {
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
}
