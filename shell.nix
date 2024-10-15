{ pkgs ? let
    lock = (builtins.fromJSON (builtins.readFile ./flake.lock)).nodes.nixpkgs.locked;
    nixpkgs = fetchTarball {
      url = "https://github.com/nixos/nixpkgs/archive/${lock.rev}.tar.gz";
      sha256 = lock.narHash;
    };
  in
  import nixpkgs { overlays = [ ]; }
, ...
}: pkgs.stdenv.mkDerivation {
  name = "nix";

  nativeBuildInputs = with pkgs; [
    nil
    nixd
    nixpkgs-fmt
    git
    nodejs_22
  ];

  NIX_CONFIG = "extra-experimental-features = nix-command flakes";
}