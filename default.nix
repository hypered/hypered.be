let
  sources = import ./nix/sources.nix;
  overlays = import ./nix/overlays.nix;
  nixpkgs = import sources.nixpkgs { inherit overlays; };

  pkgs = import nixpkgs {};

  inherit (import sources.hypered-design) replace-md-links static;

  template = ./template.html;

  to-html = src: nixpkgs.runCommand "html" {} ''
    ${nixpkgs.pandoc}/bin/pandoc \
      --from markdown \
      --to html \
      --standalone \
      --template ${template} \
      -M prefix="" \
      --output $out \
      ${fr/metadata.yml} \
      ${src}
  '';

in rec
{
  fr.md.index = fr/index.md;
  fr.md.formations = fr/formations.md;
  fr.md.contact = fr/contact.md;
  fr.md.git = fr/git.md;
  fr.md.docker = fr/docker.md;

  fr.html.index = to-html fr.md.index;
  fr.html.formations = to-html fr.md.formations;
  fr.html.contact = to-html fr.md.contact;
  fr.html.git = to-html fr.md.git;
  fr.html.docker = to-html fr.md.docker;

  html.all = nixpkgs.runCommand "all" {} ''
    mkdir -p $out/fr
    echo "hypered.be" > $out/index.html
    cp ${fr.html.index} $out/fr/index.html
    cp ${fr.html.formations} $out/fr/formations.html
    cp ${fr.html.contact} $out/fr/contact.html
    cp ${fr.html.git} $out/fr/git.html
    cp ${fr.html.docker} $out/fr/docker.html

    ${nixpkgs.bash}/bin/bash ${replace-md-links} $out

    # Temporary. These pages are manually generated (and committed)
    # from the struct/ directory.
    cp ${./hard-coded}/index.html $out/
    cp ${./hard-coded}/contact.html $out/
  '';

  # all + static, to serve locally with scripts/serve.sh
  html.all-with-static = nixpkgs.runCommand "all-with-static" {} ''
    mkdir $out
    cp -r ${html.all}/* $out/
    cp -r ${static} $out/static
    chmod -R +w $out/static/images/
    cp ${./static/images}/* $out/static/images/
  '';
}
