{
  pkgs,
  ...
}:
# nix tooling
{
    nixpkgs = {
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
      allowUnfree = true;
      # Workaround for https://github.com/nix-community/home-manager/issues/2942
      allowUnfreePredicate = (_: true);
    };
  };
  home.packages = with pkgs; [
    kubectl
    argocd
    terraform
    sops
    age
    krew
    kubernetes-helm
    wireshark
    vault
    talosctl
    alejandra
    du-dust
    fd
    procs
    zoxide
    broot
    bat
    deno
    hugo
    ansible
    ansible-lint
    rustc
    cargo
    rustfmt
    rust-analyzer
    ripgrep
    lima
    git
    (nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];

}
