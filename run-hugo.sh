#!/bin/bash

set -xe

npm install
npm run build:prod
npm run hugo serve --logLevel info --configDir=config --buildDrafts --buildFuture \
  --ignoreCache --disableFastRender --gc  --printI18nWarnings \
  --printMemoryUsage --printPathWarnings --printUnusedTemplates \
  --templateMetrics --templateMetricsHints --bind 0.0.0.0
