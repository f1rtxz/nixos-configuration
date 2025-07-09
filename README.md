# ❄️ Nixos Configuration

My personal NixOS and Home Manager configurations, managed with Nix flakes.

## Overview

This repository uses Nix flakes to declaratively and reproducibly manage:
- NixOS system settings.
- User-specific configurations via Home Manager.

## How to Use

1.  **Install NixOS:** `To get started, follow the` [NixOS Installation Manual](https://nixos.org/manual/nixos/stable/#ch-installation) `for step-by-step instructions`.
2.  **Enter the home directory:** `cd`
3.  **Clone the repository:**

```bash
git clone https://github.com/f1rtxz/nixos-configuration.git
mv nixos-configuration nix
cd ~/nix
```

4. **Remove the hardware-configuration.nix and add your own:**

```bash
rm ./nixos/hardware-configuration.nix
cp /etc/nixos/hardware-configuration.nix ./nixos/
```

5. **Edit the configuration files**
6.  **Finally, rebuild your system:**
  
```bash
sudo nixos-rebuild switch --flake ~/nix
export NIXPKGS_ALLOW_UNFREE=1
home-manager switch --impure --flake ~/nix
```

## Shell Aliases

- `nrs` - `sudo nixos-rebuild switch --flake ~/nix`
- `hms` - `export NIXPKGS_ALLOW_UNFREE=1 && home-manager switch --impure --flake ~/nix`
- `upd` - `cd ~/nix && nix flake update && sudo nixos-rebuild switch --flake ~/nix`

- `ff` - `fastfetch`
- `v` - `nvim`

## Ko-fi ;D

https://ko-fi.com/f1rtxz
 **Thank you a lot!**
