{ pkgs, ... }: {
  services.xserver = {
    enable = true;  # Enable the X server
    displayManager.gdm.enable = true;  # Enable GDM as the display manager
    displayManager.gdm.wayland = true;  # Enable Wayland support in GDM
    desktopManager.gnome.enable = true;  # Enable GNOME desktop environment
    # displayManager.defaultSession = "gnome-wayland.desktop";  # Set default session to Wayland
  };
}