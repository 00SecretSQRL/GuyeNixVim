{
  description = "Guye made a flake for nixvim";

  inputs = {
    nixvim.url = "github:nix-community/nixvim/nixos-24.05";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    nixpkgs,
    nixvim,
    flake-utils,
    ...
  } @ inputs: let
    config = import ./config; # import the module directly
  in
    flake-utils.lib.eachDefaultSystem (system: let
      nixvimlib = nixvim.lib.${system};
      pkgs = import nixpkgs {inherit system;};
      nixvim' = nixvim.legacyPackages.${system};
      nvim = nixvim'.makeNixvimWithModule {
        inherit pkgs;
        module = config;
        # you can use `extraspecialargs` to pass additional arguments to your module files
        extraSpecialArgs = {
          inherit self;
        };
      };
    in {
      checks = {
        # run `nix flake check .` to verify that your config is not broken
        default = nixvimlib.check.mktestderivationfromnvim {
          inherit nvim;
          name = "neve";
        };
      };

      packages = {
        # lets you run `nix run .` to start nixvim
        default = nvim;
      };

      formatter = pkgs.alejandra;
    });
}
