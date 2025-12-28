{ pkgs ? import <nixpkgs> { } }: pkgs.mkShell rec {
  packages = [ pkgs.pkg-config ];
  buildInputs = with pkgs; [
    wayland
    libxkbcommon
  ];
  LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath buildInputs;
}
