# .gitpod.Dockerfile

FROM docker.io/library/nix:latest

COPY configuration.nix /etc/nixos/configuration.nix

RUN nixos-rebuild switch --upgrade

CMD ["bash"]
