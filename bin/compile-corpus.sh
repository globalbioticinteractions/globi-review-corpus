#!/bin/bash
#
# compiles corpus by resolving resources and generating data products interactions.tsv.gz, review.tsv.gz and names.tsv.gz 

SCRIPT_DIR=$(dirname $0)
cat "${SCRIPT_DIR}/../datasets.tsv" \
 | xargs -L1 bash "./${SCRIPT_DIR}/interactions.s"h \
 | gzip \
 > "${SCRIPT_DIR}/../zenodo/interactions.tsv.gz"

cat "${SCRIPT_DIR}/../datasets.tsv" \
 | xargs -L1 bash "./${SCRIPT_DIR}/review.sh" \
 | gzip \
 > "${SCRIPT_DIR}/../zenodo/interactions.tsv.gz"

cat "${SCRIPT_DIR}/../datasets.tsv" \
 | xargs -L1 bash "./${SCRIPT_DIR}/names.sh" \
 | gzip \
 > "${SCRIPT_DIR}/../zenodo/interactions.tsv.gz"
