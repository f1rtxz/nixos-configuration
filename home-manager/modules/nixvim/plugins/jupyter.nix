{ pkgs, ... }: {
  programs.nixvim = {
    plugins = {
      molten = {
        settings = {
          image_provider = "image.nvim";
          ft = [ "python" "norg" "markdown" "quarto" ];
        };
        enable = true;
      };
      image = {
        settings = {
          backend = "kitty";
        };
        enable = true;
      };
      quarto = {
        settings = {
          codeRunner = {
            default_method = "molten";
          };
        };
        enable = true;
      };
      jupytext = { settings = {
          style = "markdown";
          output_extension = "md";
          force_ft = "markdown";
        };
        enable = true;
        package = pkgs.vimUtils.buildVimPlugin {
          pname = "jupytext.nvim";
          version = "0.0.0";
          src = pkgs.fetchgit {
            url = "https://github.com/bkp5190/jupytext.nvim";
            branchName = "deprecated-healthcheck";
            rev = "695295069a3aac0cf9a1b768589216c5b837b6f1";
            sha256 = "sha256-W6fkL1w2dYSjpAYOtBTlYjd2CMYPB596NQzBylIVHrE=";
          };
        };
      };
      otter.enable = true;
    };
    extraConfigLua = ''
      vim.api.nvim_create_autocmd("VimEnter", {
        group = vim.api.nvim_create_augroup("MoltenCustomConfig", { clear = true }),
        callback = function()
          if pcall(require, "molten") then
            require("molten").setup({
              output_virt_lines = true,
            })
          end
        end,
      })
    '';
  };
}
