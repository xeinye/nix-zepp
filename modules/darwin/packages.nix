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
    mpv
    python3Full
  ];

  casks = [
    "iterm2"
    "firefox"
    "qobuz"
    "maccy"
    "qobuz"
    "alfred"
  ];
}
