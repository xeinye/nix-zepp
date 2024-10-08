{ config, pkgs, ... }:

{
  home.stateVersion = "24.05";


  home.sessionPath = [
    "/Users/zepp/git/bin"
];

  programs.git = {
        enable = true;
        userName = "xeinye";
        userEmail = "82726847+xeinye@users.noreply.github.com";
    };

  programs.ssh = {
    enable = true;
    extraConfig = ''
      Host *
        AddKeysToAgent yes
        UseKeychain yes
        IdentityFile ~/.ssh/id_ed25519
    '';
  };

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    history.size = 1000;
    history.ignoreDups = true;
    history.ignoreSpace = true;
  };

  programs.gpg = {
  enable = true;
};

  services.gpg-agent = {
    enable = true;
    defaultCacheTtl = 1800;
    enableSshSupport = true;
  };
} 
