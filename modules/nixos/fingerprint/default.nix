# modules/nixos/fingerprint/default.nix
{ config, lib, pkgs, ... }:

{
  # Include the `fprintd` package in the system
  environment.systemPackages = with pkgs; [
    fprintd
    libfprint
    # fprintd-tod
  ];

  # Set up PAM services for fingerprint authentication
  # security.pam.services = {
  #   login = {
  #     authenticationModules = [ "fprintd" ];
  #   };
  #   sudo = {
  #     authentication = [ "fprintd" ];
  #   };
  # };
  services.fprintd = {
    enable = true;
    # package = pkgs.fprintd-tod;
    # tod.enable = true;
    # tod.driver = pkgs.libfprint-2-tod1-goodix;
  };
  # services.fprintd.enable = true;
  # services.fprintd-tod.enable = true;
}
