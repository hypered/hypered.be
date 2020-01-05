{ nixpkgs ? <nixpkgs>
}:

let
  pkgs = import nixpkgs {};

  design-system-version = "e1fe8d82349f4a084dee751a9c4bc5ef81ee68bb";
  design-system = pkgs.fetchFromGitHub {
    owner = "hypered";
    repo = "design-system";
    rev = design-system-version;
    sha256 = "1lqsx2zq2ymib9x4b0xncgx4wjw1mkphr4zda84fj4lbx445rdii";
  };
  inherit (import design-system {}) template lua-filter replace-md-links;

  to-html = src: pkgs.runCommand "html" {} ''
    ${pkgs.pandoc}/bin/pandoc \
      --from markdown \
      --to html \
      --standalone \
      --template ${template} \
      -M prefix="" \
      --lua-filter ${lua-filter} \
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

  html.all = pkgs.runCommand "all" {} ''
    mkdir -p $out/fr
    echo "hypered.be" > $out/index.html
    cp ${fr.html.index} $out/fr/index.html
    cp ${fr.html.formations} $out/fr/formations.html
    cp ${fr.html.contact} $out/fr/contact.html
    cp ${fr.html.git} $out/fr/git.html
    cp ${fr.html.docker} $out/fr/docker.html
    ${pkgs.bash}/bin/bash ${replace-md-links} $out
  '';
}
