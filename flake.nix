{
  description = "My first nix config";

  inputs = {
    # Nixpkgs
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";
    
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    # Also see the 'unstable-packages' overlay at 'overlays/default.nix'.

    # Home manager
    home-manager.url = "github:nix-community/home-manager/release-24.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = {
    self,
    nixpkgs,
    nixpkgs-unstable,
    home-manager,
    ...
  } @ inputs: let
    inherit (self) outputs;
    
    lib = nixpkgs.lib // home-manager.lib;

    systems = [
      "aarch64-linux"
      "i686-linux"
      "x86_64-linux"
      "aarch64-darwin"
      "x86_64-darwin"
    ];
    
    forAllSystems = nixpkgs.lib.genAttrs systems;


    forEachSystem = f: lib.genAttrs systems (system: f pkgsFor.${system});


    pkgsFor = lib.genAttrs systems (system:
    import nixpkgs {
      inherit system;
      config.allowUnfree = true;
    });

  # Define a development shell for each system
  devShellFor = system:
    let
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
    in
    import ./shell.nix { inherit pkgs; };

  in {
    
    packages = forAllSystems (system: import ./pkgs nixpkgs.legacyPackages.${system});
    
    formatter = forAllSystems (system: nixpkgs.legacyPackages.${system}.alejandra);


    overlays = import ./overlays {inherit inputs;};
    

    nixosModules = import ./modules/nixos;
    
    
    homeManagerModules = import ./modules/home-manager;


    # Available through 'nixos-rebuild --flake .#nixos'
    nixosConfigurations = {
      

      nixos = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inputs outputs;};
        modules = [
          # > Our main nixos configuration file <
          ./nixos/configuration.nix
        ];
      };
    };


    # Available through 'home-manager --flake .#rshohruh@nixos'
    homeConfigurations = {

      "rshohruh@nixos" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
        extraSpecialArgs = {inherit inputs outputs;};
        modules = [
          # > Our main home-manager configuration file <
          ./home-manager/home.nix
        ];
      };
    };
  };
}
