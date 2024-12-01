{ pkgs, ... }:
{
  config = {
    # System-wide environment variables
    environment.variables = {
      WEBKIT_DISABLE_COMPOSITING_MODE = 1;
    };

    # X11 and GNOME setup
    services.xserver = {
      enable = true;
      xkb = { variant = "colemak"; layout = "us"; };
      displayManager.gdm.enable = true;
      desktopManager.gnome = {
        enable = true;
        extraGSettingsOverrides = ''
          [org.gnome.desktop.interface]
          color-scheme='default'
          icon-theme='Papirus'
          monospace-font-name='JetBrainsMono Nerd Font 10'

          [org.gnome.mutter]
          dynamic-workspaces=true

          [org.gnome.shell.extensions.dash-to-dock]
          multi-monitor=true
          apply-custom-theme=true

          [org.gnome.desktop.session]
          idle-delay=0
        '';
      };
    };


    # GNOME Tweaks and Extensions
    environment.systemPackages = with pkgs; [
      gnome-tweaks
      papirus-icon-theme
    ];
  };
}
