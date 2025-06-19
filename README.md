# Nixos Configuration

My personal NixOS and Home Manager configurations, managed with Nix flakes.

## Overview

This repository uses Nix flakes to declaratively and reproducibly manage:
- NixOS system settings.
- User-specific configurations via Home Manager.

## How to Use

1.  **Enter the home directory:** `cd`
2.  **Clone the repository:** `git clone https://github.com/f1rtxz/nixos-configuration.git ~/nixos-config`
3.  **Apply:**
  
```bash
cd ~/nixos-config
sudo nixos-rebuild switch --flake ~/nixos-config
home-manager switch --flake ~/nixos-config
```
