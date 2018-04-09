#!/usr/bin/env bash

node release.js ../../client-data-management-service release-A release-B client-data-management-service
node release.js ../../config-service release-A release-B config-service
node release.js ../../file-engine release-A release-B file-engine
node release.js ../../portal-frontend-v2 release-A release-B portal-frontend-v2
node release.js ../../rn-wire-v3 release-A release-B rn-wire-v3
node release.js ../../file-engine release-A release-B file-engine
node release.js ../../janus release-A release-B janus
node release.js ../../ivr-service release-A release-B ivr-service
node release.js ../../messaging-services release-A release-B messaging-services
node release.js ../../mobile-number-analysis-service release-A release-B mobile-number-analysis-service
node release.js ../../rn-boomerang release-A release-B rn-boomerang