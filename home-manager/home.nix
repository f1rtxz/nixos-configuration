{ config, pkgs, ... }:
{

  imports = [
    ./zsh.nix
  ];

  home.username = "f1rtxz";
  home.homeDirectory = "/home/f1rtxz";
  home.stateVersion = "25.05";
  programs.home-manager.enable = true;

  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    colorschemes.catppuccin.enable = true;
    plugins = {
      lualine = {
	enable = true;
	settings = {
	  options = {
	    theme = "dracula";
	  };
	};
      };
      neo-tree = {
	enable = true;
      };
      web-devicons.enable = true;
    };
    globals = {
      mapleader = " ";
    };
    keymaps = [
      {
        action = ":Neotree toggle<CR>";
        key = "<C-n>";
        options = {
          silent = true;
          noremap = true;
        };
      }
    ];
  };
}

