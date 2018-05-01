#!/usr/bin/env bash


cd ../../client-data-management-service && git pull && git fetch --tags&& cd ../tools/tagger
cd ../../config-service && git pull && git fetch --tags&& cd ../tools/tagger
cd ../../rn-portal-v3 && git pull && git fetch --tags&& cd ../tools/tagger
cd ../../rn-wire-v3 && git pull && git fetch --tags&& cd ../tools/tagger
cd ../../file-engine && git pull && git fetch --tags&& cd ../tools/tagger
cd ../../janus && git pull && git fetch --tags&& cd ../tools/tagger
cd ../../ivr-service && git pull && git fetch --tags&& cd ../tools/tagger
cd ../../rn-search-api && git pull && git fetch --tags&& cd ../tools/tagger
cd ../../messaging-services && git pull && git fetch --tags&& cd ../tools/tagger
cd ../../messaging-services && git pull && git fetch --tags&& cd ../tools/tagger
cd ../../mobile-number-analysis-service && git pull && git fetch --tags&& cd ../tools/tagger
cd ../../rn-boomerang && git pull && git fetch --tags&& cd ../tools/tagger


node release.js ../../client-data-management-service    release-2018-04-13.0-hotfix.1  release-2018-04-27.0 client-data-management-service
node release.js ../../config-service                    release-2018-04-13.0           release-2018-04-27.0 config-service
node release.js ../../rn-portal-v3                release-2018-04-13.0-hotfix-6  release-2018-04-27.0 rn-portal-v3
node release.js ../../rn-wire-v3                        release-2018-04-13.0           release-2018-04-27.0 rn-wire-v3
node release.js ../../file-engine                       release-2018-04-13.0-hotfix.4  release-2018-04-30.0 file-engine
node release.js ../../janus                             release-2018-04-13.0           release-2018-04-27.0 janus
node release.js ../../ivr-service                       release-2018-04-13.0           release-2018-04-27.0 ivr-service
node release.js ../../rn-search-api                release-2018-04-04.0           release-2018-04-27.0 journey-service
node release.js ../../messaging-services                release-2018-04-13.0           release-2018-04-27.0 media-services
node release.js ../../messaging-services                release-2018-04-13.0-hotfix.2  release-2018-04-27.0 messaging-services
node release.js ../../mobile-number-analysis-service    release-2018-04-13.0           release-2018-04-27.0 mobile-number-analysis-service
node release.js ../../rn-boomerang                      release-2018-04-13.0           release-2018-04-27.0 rn-boomerang