FROM    cypress/browsers:latest
WORKDIR /workdir
ARG     VERSION
RUN     yarn add cypress@${VERSION}
RUN     npx cypress verify
CMD     ["npx", "cypress"]
