{
    description = "System config";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";

        home-manager = {
            url = "github:nix-community/home-manager/release-24.05";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };

    outputs = {nixpkgs, home-manager,  ...}: 
        let
            sys = "x86_64-linux";
        in {
        nixosConfigurations = {
            PIOTR-PC-NIXOS = nixpkgs.lib.nixosSystem {
                system = sys;
                modules = [ ./configuration.nix ];
            };
        };

        homeConfigurations = {
            piotr = home-manager.lib.homeManagerConfiguration{
                pkgs = nixpkgs.legacyPackages.${sys};
                modules = [ ./home.nix ];
            };
        };
    };
}