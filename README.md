Build: [![CircleCI](https://circleci.com/gh/rupperyes/docker-cypress-runner.svg?style=svg)](https://circleci.com/gh/rupperyes/docker-cypress-runner)

# Docker Cypress Runner

A docker image with Cypress installed, ready for your E2E needs.
It's based on cypress/browsers:latest, which should include the latest Chrome.

See it in Docker hub: https://cloud.docker.com/repository/docker/rdelafuente/cypress


## How to use
docker run -v /my/projecty/cypress:/cypress rdelafuente/cypress

## Pin a version

There is a CircleCI hourly build that pulls the latest Cypress, tags it, and pushes it.

You will find Cypress 3.1.3, for example, in rdelafuente/cypress-runner:3.1.3
You will also find any new Cypress versions published at most 1 hour after they reach the yarn repos.

In the unlikely case you don't want to pin down a Cypress version, you can just use rdelafuente/cypress-runner:latest for... well, for the latest Cypress.
