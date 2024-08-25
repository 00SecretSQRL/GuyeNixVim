{
  description = "Guye maede a flake for nixvim";

  inputs = {
    nixvim.url = "github:nix-community/nixvim";
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
    flake-utils.lib.eachdefaultsystem (system: let
      nixvimlib = nixvim.lib.${system};
      pkgs = import nixpkgs {inherit system;};
      nixvim' = nixvim.legacypackages.${system};
      nvim = nixvim'.makenixvimwithmodule {
        inherit pkgs;
        module = config;
        # you can use `extraspecialargs` to pass additional arguments to your module files
        extraspecialargs = {
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
