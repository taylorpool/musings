{
  sources ? import ./npins,
  nixpkgs ? sources.nixpkgs,
  pkgs ? import nixpkgs { },
}:
pkgs.mkShellNoCC {
  packages = [
    (pkgs.texliveBasic.withPackages (
      ps: with ps; [
        texdoc
        amsmath
        pdftex
        synctex
      ]
    ))
  ];
}
