#!/bin/bash
#
# take anchors and attempt to resolve their related content
#
# Default anchor relates to:
#
# Elton, Nomer, & Preston. (2025). Versioned Archive and Review of Biotic Interactions and Taxon Names Found within ZekeMarshall/ZMBioticInteractions hash://md5/7e7ffc737f723321ca474ee497efafce. Zenodo. https://doi.org/10.5281/zenodo.16415884
#

set -x

SCRIPT_DIR=$(dirname $0)
ANCHOR_ID=${1:-hash://md5/7e7ffc737f723321ca474ee497efafce}
PRESTON_OPTS="--algo md5 --data-dir ${SCRIPT_DIR}/../zenodo --remote https://zenodo.org --anchor ${ANCHOR_ID}"

preston ls $PRESTON_OPTS \
 | elton stream --record-type name $PRESTON_OPTS \
 | mlr --itsvlite --ojsonl cat
