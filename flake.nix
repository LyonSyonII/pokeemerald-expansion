{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = { nixpkgs, flake-utils, ... }: flake-utils.lib.eachDefaultSystem (system:
    let
      pkgs = import nixpkgs {
        inherit system;
      };
    in
    {
      devShells.default = pkgs.mkShell rec {
        nativeBuildInputs = with pkgs; [
          libpng
          pkgs.pkgsCross.arm-embedded.stdenv.cc
          qt6.full
        ];

        buildInputs = with pkgs; [
          gnumake
          llvmPackages.clang-tools
          pkg-config
          gdb
          bintools
          python3
          mgba
        ];

        LD_LIBRARY_PATH = with pkgs; lib.makeLibraryPath nativeBuildInputs;
      };
    });
}
