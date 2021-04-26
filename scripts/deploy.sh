#!/usr/bin/env bash
set -o errexit
set -o pipefail
set -o noclobber
set -o nounset
#set -o xtrace

# Get the relative path to this directory
MY_PATH="`dirname \"$0\"`"

# Upload everything to the server
#scp -r * root@146.185.154.205:/var/www/stratego.martijndwars.nl

# Upload only changes to the server
rsync -avh $MY_PATH/../org.metaborg.strdoc.website/* root@146.185.154.205:/var/www/stratego.martijndwars.nl
