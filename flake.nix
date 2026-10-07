{
    description = "dim-example-html: a dimOS Desktop app that is one HTML file (`nix build .#dimosApp` -> a folder with index.html)";
    inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    outputs = { self, nixpkgs }:
        let
            systems = [ "aarch64-darwin" "x86_64-darwin" "x86_64-linux" "aarch64-linux" ];
            forAll = f: nixpkgs.lib.genAttrs systems (system: f nixpkgs.legacyPackages.${system});
        in {
            # Desktop runs `nix build .#dimosApp`; a folder with an index.html is served as is at /apps/<name>/
            packages = forAll (pkgs: rec {
                dimosApp = pkgs.runCommand "dim-example-html" { } "mkdir $out && cp ${./index.html} $out/index.html";
                default = dimosApp;
            });
        };
}
