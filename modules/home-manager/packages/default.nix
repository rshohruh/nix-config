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
      make
      cmake
      python3
      nodejs

      # Productivity tools
      libreoffice
      sublime-text
      gimp
      chrome

      # Database tools
      postgresql
      redis
      mongodb
      sqlite

      # Containers and Virtualization
      docker
      virtualbox

      # Networking tools
      nmap
      vpnclient

      # Archive tools
      unzip
      p7zip
      tar
      xz
      gzip
      bzip2
      rar
      pigz

      # Others
      rigrep
      curl
      tree
      mtr
      fzf
      mc
      zoom-us
      
      # Unstable packages
      unstable.vscode
      unstable.docker-compose
    ]
  };
}