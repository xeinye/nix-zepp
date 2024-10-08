{ config, lib, pkgs, ... }:

let
  packages = import ./packages.nix { inherit pkgs; };
in
{

environment.systemPackages = packages.systemPackages;
  homebrew = {
    enable = true;
    global.autoUpdate = false;
    casks = packages.casks;
  };

  users.users.zepp.home = "/Users/zepp";
  ids.gids.nixbld = 350;

  # Auto upgrade nix package and the daemon service.
  services.nix-daemon.enable = true;
  # nix.package = pkgs.nix;

  # Necessary for using flakes on this system.
  nix.settings.experimental-features = "nix-command flakes";

  # Create /etc/zshrc that loads the nix-darwin environment.
  programs.zsh.enable = true; # default shell on catalina

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 4;

  nix.configureBuildUsers = true;

  # The platform the configuration will be used on.
  nixpkgs.hostPlatform = "x86_64-darwin";
}
