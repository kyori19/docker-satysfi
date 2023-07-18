# SATySFi (unofficial) Docker Image

[SATySFi](https://github.com/gfngfn/SATySFi)

> SATySFi (pronounced in the same way as the verb “satisfy” in English) is a new typesetting system equipped with a statically-typed, functional programming language.

## Tags

All images are based on latest debian stable ([Dockerfile](https://github.com/kyori19/docker-satysfi/blob/master/Dockerfile)).

* `latest` - Latest stable SATySFi
* `x.x.x` - Specific version of SATySFi

## Usage

### Run SATySFi (without dependencies)

```sh
docker run -v $(pwd):/work kyori/satysfi:latest satysfi /work/example.saty
```

### Install dependencies and run SATySFi

```sh
docker run -v $(pwd):/work kyori/satysfi:latest /bin/bash

# do something in container
opam install satysfi-xxx
satysfi /work/example.saty
```

### Build your own image

Install it in your Dockerfile based on this image.
`satyrographos install` will automatically run on container creation.

```Dockerfile
FROM kyori/satysfi:latest

RUN opam install satysfi-xxx
```

## Contribution

### If you find missing versions or tags

Report to [Issues](https://github.com/kyori19/docker-satysfi/issues), I will support as soon as possible.
