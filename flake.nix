{
  description = "Flake development templates";

  outputs = { self }: {
    templates = {

      trivial = {
        path = ./trivial;
        description = "A very basic flake";
      };

      python = {
        path = ./python;
        description = "Python template, using pyproject-nix";
        welcomeText = ''
          # Getting started
          - Run `direnv allow .`
          - Run `nix develop`
        '';
      };
    };

    defaultTemplate = self.templates.trivial;

  };
}
