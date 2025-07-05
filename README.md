# Nixos Configuration

My personal NixOS and Home Manager configurations, managed with Nix flakes.

## Overview

This repository uses Nix flakes to declaratively and reproducibly manage:
- NixOS system settings.
- User-specific configurations via Home Manager.

## How to Use

1.  **Install NixOS:** `If you haven't already installed NixOS, follow the [NixOS Installation Guide](https://nixos.org/download/) for detailed instructions.`
2.  **Enter the home directory:** `cd`
3.  **Clone the repository:**

```bash
git clone https://github.com/f1rtxz/nixos-configuration.git ~/nix
cd ~/nix
```

4. **Remove the hardware-configuration.nix and add your own:**

```bash
rm hardware-configuration.nix
cp /etc/nixos/hardware-configuration.nix ./
```

5. **Edit the `flake.nix` file**
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

## License

MIT

## Ko-fi ;D

https://ko-fi.com/f1rtxz
 **Thank you a lot!**
