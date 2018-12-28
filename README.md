[![CircleCI](https://circleci.com/gh/rupperyes/docker-cypress-runner.svg?style=svg)](https://circleci.com/gh/rupperyes/docker-cypress-runner)

# Docker Cypress Runner

A docker image with Cypress installed, ready for your E2E needs.
It's based on cypress/browsers:latest, which should include the latest Chrome.

See it in Docker hub: https://cloud.docker.com/repository/docker/rdelafuente/cypress

There is a CircleCI hourly build that pulls the latest Cypress, tags it, and pushes it.

## How to use

> docker run -v /my/project/cypress:/cypress rdelafuente/cypress

## Use with a specific Cypress version

You will find Cypress 3.1.3, for example, in rdelafuente/cypress:3.1.3

You will also find any new Cypress versions published at most 1 hour after they reach the yarn repos.

In the unlikely case you don't want to pin down a Cypress version, you can just use rdelafuente/cypress:latest for... well, for the latest Cypress.

## Why does this exist

Cypress publishes an image that contains Chrome, but it does not contain the Cypress binary.
That causes Cypress to download and unzip every time our CI builds run. That is a lot of downloading
and unzipping, with all the time waste and flakiness that comes with it.

This image is currently saving us around 1 minute per build. 
This number will vary based on the specs of your CI machines.

## If you're missing a Cypress version

Sorry about that. I haven't manually gone back in time and created all the past versions.
Message me or create an issue here and I'll run this manually with the missing version.
Or pull request a script that runs for all the past versions.

## If you find a bug

Oops! PR the fix if you can, or raise an issue otherwise.
