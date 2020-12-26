{ pkgs ? import <nixpkgs> {} }:

(pkgs.buildFHSUserEnv {
  name = "static";
  targetPkgs = pkgs: with pkgs; [
    ghc haskellPackages.cabal-install binutils
  ];
}).env
