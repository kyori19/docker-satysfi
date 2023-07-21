# syntax=docker/dockerfile:1.3-labs

FROM ocaml/opam:debian-ocaml-4.14

COPY docker-entrypoint.sh /usr/local/bin/

ARG VERSION
RUN <<EOF
  sudo ln -sf /usr/bin/opam-2.1 /usr/bin/opam
  opam repository add satysfi-external https://github.com/gfngfn/satysfi-external-repo.git
  opam repository add satyrographos https://github.com/na4zagin3/satyrographos-repo.git
  opam update
  opam install satysfi.${VERSION} satysfi-dist.${VERSION} satyrographos
EOF

WORKDIR /work
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["/bin/bash"]
