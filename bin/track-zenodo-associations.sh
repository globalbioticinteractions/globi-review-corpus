#!/bin/bash
# 
# tracks zenodo query associated with known, versioned batlit content
#
# Usage: 
#  ./track-zenodo-associations.sh [Zenodo endpoint url] [Zenodo community]
#
# with 
#  Zenodo endpoint url being https://sandbox.zenodo.org (testing) or https://zenodo.org (production), and 
#  Zenodo community being the identifier of the Zenodo community (e.g., batlit) in which the deposits are located. 
#

set -x 

SCRIPT_DIR=$(dirname $0)
DATA_DIR="${SCRIPT_DIR}/../data"

ZENODO_ENDPOINT_URL=${1:-https://zenodo.org/}
ZENODO_COMMUNITY=${2:-globi-review}

DATASETS_ID=$(preston track --data-dir "${DATA_DIR}" \
  --algo md5 \ 
  https://depot.globalbioticinteractions.org/snapshot/target/data/tsv/datasets.tsv \
  | grep hasVersion \
  | tail -1 \
  | grep -Eo "hash://md5/[a-f0-9]{32}")

preston track --data-dir "${DATA_DIR}" \
 --algo md5 \
 -f <(preston cat --data-dir "${DATA_DIR}" "$DATASETS_ID" \
 | tail -n+2 \
 | sed 's+^+urn:lsid:globalbioticinteractions.org:dataset:+g' \
 | xargs -I{} echo "${ZENODO_ENDPOINT_URL}/api/communities/${ZENODO_COMMUNITY}/records?q=%22{}%22&l=list&limit=1")

preston head --data-dir "${DATA_DIR}" --algo md5 \
 > "${DATA_DIR}/HEAD"

preston head --data-dir "${DATA_DIR}" --algo md5 \
 | grep hasVersion \
 | grep zenodo \
 | grep -Ff ${SCRIPT_DIR}/../lsid-included.txt \
 | preston cat \
 | jq -c '.hits.hits[].metadata.alternate_identifiers | { lsid: .[1].identifier, version: .[0].identifier }' \
 | sort \
 | mlr --ijsonl --otsvlite cat \
 | tee ${SCRIPT_DIR}/../datasets.tsv

