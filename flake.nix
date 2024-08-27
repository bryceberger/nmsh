{
  outputs = {nixpkgs, ...}: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    devShells.${system}.default = pkgs.mkShellNoCC {
      packages = with pkgs; [
        curl
        jq
        fzf

        bash-language-server
        shfmt
      ];
    };
  };
}
