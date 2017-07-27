# Cloud Data Team's Base Docker image

[![Docker Hub](https://img.shields.io/docker/pulls/acquia/cloud-data-base.svg?label=Docker%20Hub)](https://hub.docker.com/r/acquia/cloud-data-base/)
[![(GitHub)](https://img.shields.io/github/commits-since/acquia/cloud-data-base/df20c13.svg?style=social&label=GitHub)](https://github.com/acquia/cloud-data-base)
[![Build Status](https://travis-ci.org/acquia/cloud-data-base.svg?branch=master)](https://travis-ci.org/acquia/cloud-data-base)

This Docker image is designed to mimic our deployment environment for use in
build tools:

- CentOS 7
- Ruby 2.2 and 2.3
- systemd

## Fork please!

Please don't push branches to this repo even if you have access; fork and open
a pull request. Pushing to branches on this repo trigger Travis-CI and Docker
Hub, wasting resources and slowing other builds.

Make a PR and verify it passes Travis-CI, then get someone to merge it.

## Versions

Pushing to master creates a new `latest` tag build. Pushing a git tag creates
a tag of the same name.

## Hacking

When making changes, use a project local Dockerfile to hack on top of the base
image first. Once you are happy with those changes, then make a PR to this repo.

Once it's merged, test the `latest` build from Docker Hub and if that succeeds,
tag it and use the tag in the project.
