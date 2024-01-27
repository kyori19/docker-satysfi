FROM ocaml/opam:debian-ocaml-4.14

COPY docker-entrypoint.sh /usr/local/bin/

ARG VERSION
RUN <<EOF
  sudo ln -sf /usr/bin/opam-2.1 /usr/bin/opam
  opam repository add satysfi-external https://github.com/gfngfn/satysfi-external-repo.git
  opam repository add satyrographos https://github.com/na4zagin3/satyrographos-repo.git
  opam update
  opam install camlimages.5.0.4-1 satysfi.${VERSION} satysfi-dist.${VERSION} satyrographos
  git config --unset --global user.name
  git config --unset --global user.email
EOF

WORKDIR /work
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["/bin/bash"]
