# This is your system's configuration file.
# Use this to configure your system environment (it replaces /etc/nixos/configuration.nix)
{
  inputs,
  outputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
    outputs.nixosModules.postgres
    outputs.nixosModules.desktop.gnome
    outputs.nixosModules.fonts
    outputs.nixosModules.nixpkgs
    outputs.nixosModules.sound
    outputs.nixosModules.users.rshohruh
    # ./users.nix
    ./hardware-configuration.nix
  ];

  # Bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.networkmanager.enable = true;
  
  time.timeZone = "Asia/Tashkent";

  networking.hostName = "laptop";
  virtualisation.docker.enable = true;

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  system.stateVersion = "24.11";
}
