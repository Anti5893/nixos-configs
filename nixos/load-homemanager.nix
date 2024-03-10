{ inputs, outputs, ... }: {
  imports = [
    # Import home-manager's NixOS module
    inputs.home-manager.nixosModules.home-manager
  ];

  home-manager = {
    extraSpecialArgs = { inherit inputs outputs unstable; };
    users = {
      # Import your home-manager configuration
      evan = import ../home-manager/home.nix;
    };
  };
}