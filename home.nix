{ config, pkgs, ... }: {
  home.username = ${user};
  home.homeDirectory = "/home/${user}";
  
  # Let Home Manager manage itself
  programs.home-manager.enable = true;

  # Your home-manager configurations here
  home.packages = with pkgs; [
    neovim
    git
    emacs
    fd
    ripgrep
  ];

  programs.git = {
    enable = true;
    userName = "Large-Mac";
    userEmail = "bighaodwofad@gmail.com";
    extraConfig = {
      credential.helper = "store";
    };
  };


  # Specify state version
  home.stateVersion = "24.11";
}
