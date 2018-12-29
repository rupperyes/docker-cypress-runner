FROM    cypress/browsers:latest
WORKDIR /workdir
ARG     VERSION
RUN     yarn add cypress@${VERSION}
RUN     npx cypress verify
WORKDIR /cypress
CMD     ["/workdir/node_modules/.bin/cypress", "run"]
