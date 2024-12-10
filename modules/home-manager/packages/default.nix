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
      clang-tools
      gdb
      gnumake
      cmake
      python3
      nodejs
      ghc

      # Productivity tools
      libreoffice
      # sublime4
      gimp
      google-chrome
      xournalpp
      texliveSmall

      # Database tools
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
      unstable.zed-editor


      # Nix essentials
      nixd
      nil
      nixfmt-classic
      just

      postman
    ];
  };
}
