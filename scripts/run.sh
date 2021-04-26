#!/usr/bin/env bash
set -o errexit
set -o pipefail
set -o noclobber
set -o nounset
#set -o xtrace

java \
  -jar org.metaborg.strdoc.transform/target/org.metaborg.strdoc.transform-2.6.0-SNAPSHOT-jar-with-dependencies.jar \
  --stratego /Users/daniel/repos/spoofax2/stratego/org.metaborg.meta.lang.stratego/target/org.metaborg.meta.lang.stratego-2.6.0-SNAPSHOT.spoofax-language \
  --doc /Users/daniel/repos/strdoc/org.metaborg.strdoc.lang/target/org.metaborg.strdoc.lang-2.6.0-SNAPSHOT.spoofax-language \
  --project /Users/daniel/repos/spoofax2/strategoxt/strategoxt/stratego-libraries/lib/spec \
  --output /Users/daniel/repos/strdoc/org.metaborg.strdoc.website/
