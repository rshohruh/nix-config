{ pkgs, ... } : {
  config = {
    users.users.rshohruh = {
      description = "Shohruh Rahmatillayev";
      initialPassword = "7744";
      isNormalUser = true;
      openssh.authorizedKeys.keys = [

      ];
      
      extraGroups = ["wheel"];
      packages = (with pkgs;[
        vscode
        telegram-desktop
        git
        libreoffice-fresh
        firefox
        google-chrome
        gcc
        gnome.gnome-tweaks
        fastfetch
        btop
        unstable.zed-editor
      ]);
    };
  };
}