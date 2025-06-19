# Nixos Configuration

My personal NixOS and Home Manager configurations, managed with Nix flakes.

## Overview

This repository uses Nix flakes to declaratively and reproducibly manage:
- My NixOS system settings.
- My user-specific configurations via Home Manager.

## How to Use

1.  **Clone:** `git clone https://github.com/f1rtxz/nixos-configuration.git ~/nixos-config`
2.  **Adjust `flake.nix`:** Ensure hostname (`nixos`) and username (`f1rtxz`) match your system.
3.  **Apply:**
    ```bash
    cd ~/nixos-config
    sudo nixos-rebuild switch --flake .#nixos
    home-manager switch --flake .#f1rtxz
    ```
