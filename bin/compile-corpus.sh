#!/bin/bash
#
# compiles corpus by resolving resources and generating data products interactions.tsv.gz, review.tsv.gz and names.tsv.gz 

set -x

SCRIPT_DIR=$(dirname $0)

compile() {
 cat "${SCRIPT_DIR}/../datasets.tsv" \
 | cut -f2 \
 | xargs -L1 bash "./${SCRIPT_DIR}/$1.sh" \
 | gzip \
 > "${SCRIPT_DIR}/../zenodo/$1.tsv.gz"
}

compile interactions
compile review
compile names
