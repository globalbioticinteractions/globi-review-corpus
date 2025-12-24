#!/bin/bash
#
# extracts dois from the latest inventory of Zenodo published GloBI reviews
# and retrieves their associated bibtex snippets from https://doi.org . 

SCRIPT_DIR=$(dirname $0)

PRESTON_OPTS="--algo md5 --data-dir ${SCRIPT_DIR}/../data"

preston ls $PRESTON_OPTS \
 | grep hasVersion \
 | grep zenodo \
 | preston cat $PRESTON_OPTS \
 | jq --raw-output .hits.hits[].doi_url \
 | xargs -L1 curl -LH "Accept: application/x-bibtex"
