#!/bin/bash
acorn build -t ghcr.io/randall-coding/acorn/mattermost && \
acorn push ghcr.io/randall-coding/acorn/mattermost && \
acorn run --compute-class standard -n mattermost ghcr.io/randall-coding/acorn/mattermost