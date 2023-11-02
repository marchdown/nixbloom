# configuration.nix

{ config, pkgs, ... }:

{
  imports = [
    # Include the results of the hardware scan.
    ./hardware-configuration.nix
  ];

  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;

  networking.hostName = "my-nixos-machine";

  environment.systemPackages = with pkgs; [
    # Clojure
    clojure

    # Emacs
    emacs

    # Network Tools
    iproute
    wireshark
    nmap
    tcpdump
    net-tools

    # Add more packages as needed
  ];

  # Additional NixOS options and configurations can be added here.
}
