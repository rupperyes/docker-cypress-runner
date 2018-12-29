FROM    cypress/browsers:latest

ENV     PATH="/cypress/node_modules/.bin:${PATH}"
WORKDIR /workdir
CMD     ["/cypress/node_modules/.bin/cypress", "run"]

ARG     VERSION=latest

RUN     mkdir /cypress && \
        yarn --cwd /cypress add cypress@${VERSION} && \
        /cypress/node_modules/.bin/cypress verify
