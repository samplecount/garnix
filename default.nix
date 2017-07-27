{ pkgs ? import <nixpkgs> {}
}:

let
  androidndk = import ./androidndk.nix {
    inherit (pkgs) stdenv fetchurl zlib ncurses p7zip lib makeWrapper coreutils file findutils gawk gnugrep gnused jdk which;
    platformTools = pkgs.androidenv.platformTools;
  };
in pkgs.stdenv.mkDerivation {
  name = "motherfucking-doushebag";
  buildInputs = [ androidndk ];
  shellHook = ''
    
  '';
}
