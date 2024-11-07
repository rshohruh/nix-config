{ config
, pkgs
, lib
, ...
}: {
  config = {
    # Packages to be installed on my machine
    home.packages = with pkgs; [
      # Downloader
      aria2
      wget

      # Media tools
      ffmpeg
      celluloid

      gnupg
      fastfetch
      
      # Development tools
      gcc
      gdb
      gnumake
      cmake
      python3
      nodejs

      # Productivity tools
      libreoffice
      # sublime4
      gimp
      google-chrome

      # Database tools
      postgresql
      # redis
      # mongodb
      sqlite

      # Containers and Virtualization
      docker
      virtualbox

      # Networking tools
      nmap
      # openvpn

      # Archive tools
      unzip
      p7zip
      gnutar
      xz
      gzip
      bzip2
      rar
      pigz

      # Others
      curl
      tree
      mtr
      fzf
      mc
      zoom-us
      github-desktop
      telegram-desktop
      btop

      # Unstable packages
      unstable.vscode
      unstable.docker-compose
    ];
  };
}