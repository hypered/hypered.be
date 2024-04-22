# hypered.be

This is the repository for the [hypered.be](https://hypered.be) site.

The current content is in French.

It is served through a Digital Ocean machine built using the [Nix
Notes](https://github.com/noteed/nix-notes) instructions.

Note: the trainings (index, docker, git) pages are not linked from the main
index.


## Building locally

The build script `scripts/build.sh` relies on the [Hypered design
system](https://github.com/hypered/design).


## Serving locally

```
$ scripts/serve.sh
```

For the Pug-based files:

```
$ cd struct/
$ ./serve.sh
```


## Deploying

The helper script `scripts/deploy.sh` can be used to deploy. The site is part
of a larger NixOS configuration. Deploying is done by using the approach
detailed in [nix-notes](https://github.com/noteed/nix-notes).
