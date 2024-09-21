{ pkgs, ... }:
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
{
  systemPackages = with pkgs; [
    vim
    curl
    git
    ffmpeg
    yt-dlp
    fzf
    gnupg
    zsh
    pinentry_mac
  ];

  casks = [
    "iterm2"
    "visual-studio-code"
    "firefox"
    "qobuz"
    "maccy"
    "iina"
  ];
}
