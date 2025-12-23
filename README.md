# GloBI Review Corpus

To help make species interaction datasets easier to access, Global Biotic Interactions (GloBI, https://globalbioticinteractions.org) reviews existing datasets and makes their associated review reports available via https://zenodo.org/community/globi-review . 

This repository tracks these review reports and offers tools to access the species interaction datasets under review.

## List Interactions

To list species interactions for a specific data review and put the output in a file ```interactions.tsv```, you can run:

```
preston ls --algo md5 --anchor hash://md5/838ede23f4b8c6e8b7d692b61e954a60 --remote https://zenodo.org \
 | elton stream --algo md5 --anchor hash://md5/838ede23f4b8c6e8b7d692b61e954a60 --remote https://zenodo.org \
 | tee interactions.tsv
```

Where, in this case, hash://md5/838ede23f4b8c6e8b7d692b61e954a60 refers to the data used to deposit the review - 

```bibtex
@misc{elton_2025_16415843,
  author       = {Elton and
                  Nomer and
                  Preston},
  title        = {Versioned Archive and Review of Biotic
                   Interactions and Taxon Names Found within
                   aeiche01/MojaveFoodWeb
                   hash://md5/838ede23f4b8c6e8b7d692b61e954a60
                  },
  month        = jul,
  year         = 2025,
  publisher    = {Zenodo},
  doi          = {10.5281/zenodo.16415843},
  url          = {https://doi.org/10.5281/zenodo.16415843},
}
```

Note that Elton 0.12.2+ and Preston 0.11.4+ are assumed to be installed.

Alternatively, a packaged script can be used 

```
bin/interactions.sh hash://md5/838ede23f4b8c6e8b7d692b61e954a60 \
 | tee interactions.tsv
```

the first record (a coyote (_Canis latrans_) eating a bunny (_Lepus californicus_ according to [Eichenwalt et al. 2024 doi:10.1002/ece3.10930](https://doi.org/10.1002/ece3.10930)) of which is shown below in xtab format - 

```
argumentTypeId                         https://en.wiktionary.org/wiki/support
sourceOccurrenceId                     
sourceCatalogNumber                    
sourceCollectionCode                   
sourceCollectionId                     
sourceInstitutionCode                  
sourceTaxonId                          
sourceTaxonName                        Canis latrans
sourceTaxonRank                        
sourceTaxonPathIds                     
sourceTaxonPath                        
sourceTaxonPathNames                   
sourceBodyPartId                       
sourceBodyPartName                     
sourceLifeStageId                      
sourceLifeStageName                    
sourceSexId                            
sourceSexName                          
interactionTypeId                      http://purl.obolibrary.org/obo/RO_0002470
interactionTypeName                    eats
targetOccurrenceId                     
targetCatalogNumber                    
targetCollectionCode                   
targetCollectionId                     
targetInstitutionCode                  
targetTaxonId                          
targetTaxonName                        Lepus californicus
targetTaxonRank                        
targetTaxonPathIds                     
targetTaxonPath                        
targetTaxonPathNames                   
targetBodyPartId                       
targetBodyPartName                     
targetLifeStageId                      
targetLifeStageName                    
targetSexId                            
targetSexName                          
basisOfRecordId                        
basisOfRecordName                      
http://rs.tdwg.org/dwc/terms/eventDate 
decimalLatitude                        35.41665
decimalLongitude                       -115.58416
localityId                             GEONAMES:5373972
localityName                           Mojave Desert
referenceDoi                           10.1002/ece3.10930
referenceUrl                           https://doi.org/10.1002/ece3.10930
referenceCitation                      Eichenwald, A. J., Fefferman, N. H., & Reed, J. M. (2024). Potential extinction cascades in a desert ecosystem: Linking food web interactions to community viability. Ecology and Evolution, 14, e10930. https://doi.org/10.1002/ece3.10930. Accessed at <hash://md5/0de7aa7a1776a25a281510552b73b14f> on 23 Dec 2025.
namespace                              aeiche01/MojaveFoodWeb
citation                               Eichenwald, A. J., Fefferman, N. H., & Reed, J. M. (2024). Potential extinction cascades in a desert ecosystem: Linking food web interactions to community viability. Ecology and Evolution, 14, e10930. https://doi.org/10.1002/ece3.10930
archiveURI                             hash://md5/0de7aa7a1776a25a281510552b73b14f
lastSeenAt                             2025-12-23T21:03:30.142Z
contentHash                            
eltonVersion                           0.16.2
```

## Clone Review Data

In order to clone copies of data used to generate published reviews, you can use a workflow like:

```
preston ls --algo md5 --anchor hash://md5/838ede23f4b8c6e8b7d692b61e954a60 --remote https://zenodo.org \
 | preston cat --algo md5 --anchor hash://md5/838ede23f4b8c6e8b7d692b61e954a60 --remote https://zenodo.org \
 > /dev/null
```

This workflow attempts to retrieve digital content associated with 

> Elton, Nomer, & Preston. (2025). Versioned Archive and Review of Biotic Interactions and Taxon Names Found within aeiche01/MojaveFoodWeb hash://md5/838ede23f4b8c6e8b7d692b61e954a60. Zenodo. https://doi.org/10.5281/zenodo.16415843

and store them locally in a "data" folder. After this completes, subsequent data access no longer needs internet access because all the required data (and their documented origin) is captured in the ```data/``` folder and can be used by tools like ```preston``` and ```elton```.  

## Review Index

The following table represents a selection of the GloBI data reviews seen in https://zenodo.org/community/globi-review . For simplicity, only the dataset ids and their associated content ids are listened.

| lsid | version |
| --- | --- |
| urn:lsid:globalbioticinteractions.org:dataset:aeiche01/MojaveFoodWeb | hash://md5/838ede23f4b8c6e8b7d692b61e954a60 |
| urn:lsid:globalbioticinteractions.org:dataset:AgentschapPlantentuinMeise/ashForestInteractions | hash://md5/2273176929e38071b21a6438df74d484 |
| urn:lsid:globalbioticinteractions.org:dataset:arw36/EcoPics_Interactions | hash://md5/d158a36eddfcea8da281e0e25466fb22 |
| urn:lsid:globalbioticinteractions.org:dataset:arw36/willoughby-etal-2017-roost-interactions | hash://md5/8104fef0bbff78be9e5a446088743d28 |
| urn:lsid:globalbioticinteractions.org:dataset:arw36/willoughby-etal-2017-virus-interactions | hash://md5/a19b563d689ca7bea2965b5f1382bd25 |
| urn:lsid:globalbioticinteractions.org:dataset:aubreymoore/Guam-insect-associates-of-Glochidion | hash://md5/db36dc71bcb30cd8b30fa22fb383e32d |
| urn:lsid:globalbioticinteractions.org:dataset:BDMYRepository/Echino-Interactions | hash://md5/9c8c4e11cf3a760550ce74b939558058 |
| urn:lsid:globalbioticinteractions.org:dataset:BDMYRepository/Paguroidea-Mollusca-Interactions | hash://md5/c3ecc9bd06c06c115a4212943cd93361 |
| urn:lsid:globalbioticinteractions.org:dataset:BDMYRepository/Sponge_Interactions | hash://md5/2805eb8a6efae63b1a76056d92467df6 |
| urn:lsid:globalbioticinteractions.org:dataset:beraute/Klamath-mountains | hash://md5/1430772d905794046e414e3eea947e23 |
| urn:lsid:globalbioticinteractions.org:dataset:beraute/Pillar_Point_16S_18S | hash://md5/2e3409c57e1b27efd76374050678bd9c |
| urn:lsid:globalbioticinteractions.org:dataset:beraute/Pillar_Point_CO1_16S | hash://md5/c8648ac1af8715739d5134148469fb61 |
| urn:lsid:globalbioticinteractions.org:dataset:Big-Bee-Network/bee-interaction-database | hash://md5/194b69eabd5b183f1f40a6437caf14f6 |
| urn:lsid:globalbioticinteractions.org:dataset:CALeDNA/Klamath-mountains | hash://md5/059f1ec6e2eba633d5c1d2f65c14d767 |
| urn:lsid:globalbioticinteractions.org:dataset:CEIDatUGA/Fournie-etal_2015-interactions | hash://md5/3ba2a33f4ac06c843233944e9952c93e |
| urn:lsid:globalbioticinteractions.org:dataset:diatomsRcool/greenland_interactions | hash://md5/3f91b3e9e7812c5c2180079bc5b9fbaf |
| urn:lsid:globalbioticinteractions.org:dataset:diatomsRcool/yellowstone_grizzly | hash://md5/e2c21175795736b581450495dd9c9077 |
| urn:lsid:globalbioticinteractions.org:dataset:ekrimmel/paleo-interactions-test | hash://md5/7ed81623aa62ef4cd19d5bc9b56638dd |
| urn:lsid:globalbioticinteractions.org:dataset:EMTuckerLab/ummzi | hash://md5/6f4d6b1c32e0e262ac851acaa60c5aab |
| urn:lsid:globalbioticinteractions.org:dataset:EOL/pseudonitzchia | hash://md5/472d0dff867eb9f2997803a98d3da836 |
| urn:lsid:globalbioticinteractions.org:dataset:Extended-Bee-Network/bee-interaction-database | hash://md5/6d1a078392eed0393ee5d346a3667309 |
| urn:lsid:globalbioticinteractions.org:dataset:fgabriel1891/Palm-Frugivore_Interactions_Neo-Afrotropics | hash://md5/850a05817bcd235d4a5fb1e318f7c398 |
| urn:lsid:globalbioticinteractions.org:dataset:fgabriel1891/Plant-Frugivore-Interactions-SouthEastAsia | hash://md5/65606068d2803bf77ba465ae17144710 |
| urn:lsid:globalbioticinteractions.org:dataset:fkeck/gpt_interactions | hash://md5/960ab16271f04b766ce79bcb9bcc5be7 |
| urn:lsid:globalbioticinteractions.org:dataset:FloraVincent/DIDB | hash://md5/2b70a980a217512dbcb5a15b435ab54e |
| urn:lsid:globalbioticinteractions.org:dataset:flyingratchet/overson_2023 | hash://md5/a2efec13acd9b6aafbb9475abb5adb1f |
| urn:lsid:globalbioticinteractions.org:dataset:flyingratchet/Oversteger_Studios_biotic_interactions | hash://md5/2a78aee739024a58603046e496904ea9 |
| urn:lsid:globalbioticinteractions.org:dataset:fonturbel-lab/pollination_catalogue | hash://md5/6f9ac7dbe67db53ae04d88355ecf2299 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/AfricaTreeDatabase | hash://md5/6326a0b3275c4c5ae8b8afc32c31b307 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/AMNH-hymenoptera | hash://md5/aafbf013aca45b2011d826cfa960d3a9 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/ansp-para | hash://md5/a1939feae4ef08e55d921f2b35f99152 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/aps-turfgrasses | hash://md5/c7c10c71d881e9d881bd46a0908f420d |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/aps-turfgrasses | hash://md5/c7c10c71d881e9d881bd46a0908f420d |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/aps | hash://md5/34dfd6e4290c7d7fe30d26ea86a4f291 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/arthropodEasyCaptureAMNH | hash://md5/f68f2151504fc3f5b3728340ac71b01f |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/asu-asuhic | hash://md5/285ffd1b5d4b0c5777d3bfe92dbcd186 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/ATLANTIC_POLLINATION | hash://md5/de8f6bc1ce7f0ccfa0af1e928b19e62f |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/austin2021 | hash://md5/88160c713e72f458399ed2f0cc4d85ea |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/austraits | hash://md5/32ed821176181b992b3d32bf2ad68145 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/aziz2021 | hash://md5/9287f63a328f604e9e4508dda9e99c4d |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/barnes | hash://md5/1b1cddcd95e7f4f51aba9b9d7c24bb37 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/batbase | hash://md5/d16cd24cd99dce50bb2d62dbe360518e |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/bat-co-roosting-database | hash://md5/c38313b45b590218f8683820531a8b13 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/batplant | hash://md5/54681320b16449dcaa27dff302343c21 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/BCI_Seed_Predator | hash://md5/b363c5f883a183f0b5654bd12d3685a7 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/bco-dmo | hash://md5/b20d746cddb5dfb689c7e88a4dd255ed |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/becker2020 | hash://md5/8df458e771517719d79c526377502734 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/beefunc | hash://md5/4ddec69134bf17d4de2b8db8a4337879 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/bello2017 | hash://md5/a37e968cbe66dce2a4e6f91d5e098da8 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/bell | hash://md5/04c443777fb0f00ccc27f0394551bd88 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/bioinfo | hash://md5/2c7f7b1dfead5d093f8b22147b5dcea5 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/bold | hash://md5/969227ee2bf361797a9508ba886bad24 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/boreux2019 | hash://md5/79e5fdb3f1d92cebc2505fe30243eda6 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/bourlat2023 | hash://md5/1ab037712f7c93b30182e92e6325063e |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/bpbm-ent | hash://md5/7d8a51c342eb3f0b4c8bd61bff8196bd |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/brose-gateway | hash://md5/ce079a4d51ef14f2e213c9627535340d |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/brose-gateway | hash://md5/ce079a4d51ef14f2e213c9627535340d |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/brose | hash://md5/b70a019bbf2a0237ff4c7d8207f6e09a |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/brtc-para | hash://md5/29f56e7112b1a7b77fa0b824e1d6cc5f |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/bthk-database | hash://md5/87b90a43303b8a8f0fc264f5e80c947a |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/byrnes | hash://md5/dbb14c15eb756330603218ec993bc67b |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/byu-byuc | hash://md5/2e019e9e60bd77bc96d40a8a542b1be6 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/calvalheiro2023 | hash://md5/bccc0439dcedba335c2e1f9bba278502 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/camargo-sanabria2025 | hash://md5/7f449566cc3ca9e74a8c00e02a3b3644 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/caps-pest-lists | hash://md5/ecd8fffbeee2c4e95a1283886729af5e |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/carril2018 | hash://md5/85f3809e21549b55fe0eea6b6ee39acd |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/carvalheiro2023 | hash://md5/d768c5cff9fa25c1ae83054d4a34f529 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/cas-ent | hash://md5/a35c85b2774833d20679e8637cc7c5c3 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/Catalogue-of-Afrotropical-Bees | hash://md5/2fc2dfe7833b9cc644e4d6419ed5aed7 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/choy2017 | hash://md5/3459af34b0f51c007fffe9351391e34e |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/classen2020 | hash://md5/c11fd0817b796bb3cbc39593af34c1ef |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/climbats | hash://md5/41c649dd1f9cd54c9ed7f74536effc13 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/clover | hash://md5/f5e8653dc34103d8d33ee5693fb32226 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/cmnh-izc | hash://md5/362dd13b144d20a15956fff1590ace34 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/cmnz | hash://md5/3f3c4838c4bd5c902ab031540d8ded3a |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/companion-planting-decision-support | hash://md5/ea9184c30653e287c50b274ecc07ca55 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/cook | hash://md5/9e5384164f715326d5708a60b7dd78c0 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/cpc-pollinators | hash://md5/5171d92e794fa5924956e6ad76a8a28d |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/cruaud | hash://md5/39af42eb37420f454a33d1554217dbc9 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/csvcoll | hash://md5/fd31cd52608022874645289511ec3e46 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/cu-cuac | hash://md5/a1b3cef4683c75edaebedaa58bd09c50 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/cynipidaeNorthAmerica | hash://md5/3566ac3331bc24f31f8dc6e66c337c67 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/darkcides | hash://md5/5f651ed0d0fc225963eb07ae4ef0e76e |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/dbatvir | hash://md5/ffc914fc57c8858b3cfde23a3f91522b |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/degroot2020 | hash://md5/9e6b4e0776530b5e41d14d042c33744b |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/delrisco2021 | hash://md5/cb1433264b41fc25533c2b7d16b960f5 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/dmns-para | hash://md5/19709ad262c86de686205fc7c5d59be4 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/dopi | hash://md5/5092adc224b66f397c752f6f2071ed53 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/dorey2023 | hash://md5/55682a42af3ee80c4c9b5a88582bb8cf |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/drodvir | hash://md5/4a2621ee34283865dd045d87a9a93db8 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/dugon2023 | hash://md5/a5569d8e866a78b3156b28604e022c0e |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/dunne2016SanakIntertidal | hash://md5/0e025d195b5dfc59f4e4fe302ae6e886 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/dunne2016SanakNearshore | hash://md5/2e81b28d1a94f73b22669367e5e5ea98 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/ecdysis | hash://md5/342d37a8b382bb712c607b7e00147c71 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/ecoab-host-plant | hash://md5/3ebdd5c11b3257a1ca477a43900bb0c4 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/eichenwald2021 | hash://md5/93acb0f39b4d62c2b0c098646e2fcce9 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/eupollinatorhub | hash://md5/20cf2922b53db5bd9c055e4b4e0955ec |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/ferrer-paris | hash://md5/c89402d7e3b909acbb47ce928f22b8f4 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/fishbase | hash://md5/4e0efc1fb5b56556c779d9b5067ce1eb |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/foodwebsdatabase | hash://md5/1ea8b8b9d69736ebbdf33874b665d926 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/fred | hash://md5/8aaed42b22fb2acc93d2d23933ab37e9 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/fricke2020 | hash://md5/2c3f7c3031300319d7f1d18caf24f7d7 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/fsca | hash://md5/4671936853875e440c5e56433ecf9ff9 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/funfun | hash://md5/5add044df65d840d196d4e6667f3d0ea |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/fungaltraits | hash://md5/174fbe90a153e96adda9d3bccb32126b |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/gandhi2009 | hash://md5/a5b097d44500be423f88551e3619d743 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/gemina | hash://md5/daec22aad6df8d070d97926a4d4785c5 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/globalamfungi | hash://md5/95bc47e24b6a9d7cac889add1a5b8c63 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/globalbioticinteractions-darkcides | hash://md5/f62a92b7326f716e19feff26b7372592 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/globalfungi | hash://md5/83451db8aea8a2f157a9eb2b598af72a |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/global-mammal-parasite-database | hash://md5/e8c89a931482875da765e5474483c3ab |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/global-primate-parasite-database | hash://md5/5de607e169d83c6227a6f297aa6f8dec |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/globalwebdb | hash://md5/772ac7adfcee6180c36f81c8d1118a17 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/grange2021 | hash://md5/6ac5aa04d7f7187177aefe7f9b922eb8 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/gray2015 | hash://md5/a59fe19534855afd01e4beb4c0b90265 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/gryseels2020 | hash://md5/791402c285b5b39c390c1e214752ce25 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/guzman2022 | hash://md5/006bf04d154613cbd4f9a3710543097c |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/hafner | hash://md5/7dabcde2279a660827e837ba2b84e970 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/hale2024 | hash://md5/ee9d5db1752bb04d7aea6f03b520d01d |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/hechinger2011 | hash://md5/7c674c695e47be91d4c08a588b8a222c |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/hivetracks2023 | hash://md5/222e89f396dab689331fa40bc6412d62 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/hoenle2019 | hash://md5/6b89f732ca5d16d50bcfeed9433a43b0 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/HOSTS | hash://md5/6e6fc201245791532a125a3bdc6fd74a |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/ices | hash://md5/fc343ebaf8d91e0ff37d2859f991cffd |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/icmp | hash://md5/3c8a92b4c7f4a3eb3eb5864921661185 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/inaturalist | hash://md5/2865258bf6e685b25a42f471a2a45475 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/inhs-insects | hash://md5/8c789f5de640e9c7af86085640ace2d3 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/inouyeFlyVisit | hash://md5/3424e26eec21d292e26fa00958e78d7b |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/ion2024 | hash://md5/27ffdc5896419a029d4ae81c9871a108 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/ipbes-pollinator-2016 | hash://md5/2f8d363735d4516943e3c3a5db0cf7e4 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/jeught2021 | hash://md5/c56fe7a9be0655a44cf6b0273cea2d9e |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/jorge2023 | hash://md5/86fa84d7ee3f6dd932aa7ad6f1fc17e2 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/jorissen2020 | hash://md5/b1e00d7538cfecb021276637ef0abbcd |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/jsonld-template-dataset | hash://md5/519d878804b75d0525fbab823004078c |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/kalro2023 | hash://md5/a254ecfeaa1719995db9251d928573dd |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/kau2025 | hash://md5/1860275b9eadd8a47e934f979aec6b2b |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/kf-metaweb | hash://md5/202bc9594456e90bd45f8eeb2e2f06e4 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/klecka2018 | hash://md5/97e2fa5e093f26479c51c56f47643038 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/knowledgepixels | hash://md5/db262b7af2bbdd32cee91e3e046ef0af |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/ku-semc | hash://md5/111a65e9944a2a5c29b544fb8d69f7f0 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/lamanna2020 | hash://md5/349efab69af145d4e9c351c6944c730c |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/life-watch-greece | hash://md5/fa63cf65c3890d5a891c133bcc179f39 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/light2019 | hash://md5/c9dad8bc30bcac362bcb8116444af31d |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/limbu2025 | hash://md5/1eff5d3281d2ec4b669d9e197aecfcf8 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/linnaeus1758 | hash://md5/77c913afec9dbb5df93d38385b5f7e7e |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/lupinus-nipomensis-interactions-2017 | hash://md5/c3045f1e232e0ed2aff4d19f2d65b1c7 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/maarjam | hash://md5/5415c9e3413009a725165ea1c0e51eb9 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/maate | hash://md5/0216ed61272eb984ddb3f47406d25882 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/malavi | hash://md5/dbeac5b46b28dbe114286b0599505155 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/mangal | hash://md5/15338eed17056cee0e7b42b585b664c4 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/maps | hash://md5/114e42d5e049fe16d0fd233019ba58a6 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/mcz | hash://md5/2989c728e523da25788c7403881ba110 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/menares2025-flowervisitation | hash://md5/833c72e7a4f443b8732431aca3c7ed36 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/menares2025-herbivory | hash://md5/e1244ebdf018e4818fbc9be1950887d6 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/minckly-san-bernardino-valley-2000-2011 | hash://md5/7f1f5b080dd69278ff4b9a3f357dc233 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/min-umsp | hash://md5/26da2063ca32947a33a60bd2de9e7553 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/MojaveFoodWeb | hash://md5/c22253bab5650a1cbbd1de276c385acf |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/mollentze2019 | hash://md5/ff26c9147c8b13cf9345772c083dd6f1 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/mouritsen2011 | hash://md5/90fd79bd5b13eb6b188f2e747636fe1a |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/mpabi | hash://md5/c5616a679a06d31781add9d323f1bef0 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/mpm | hash://md5/0cb785ba9ceef583d6b9a9071ad0c225 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/msb-para | hash://md5/6d7993c3d7634c418143d1b93a1fa023 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/msu-msuc | hash://md5/8060fd18ed759fb56e317b44a20e21fb |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/mycodb | hash://md5/7a8c9693b1575753ab7fb47c94973f13 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/mycoportal | hash://md5/23d7d00bc7f8662173d1efc3f4fb8352 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/natural-history-museum-london-interactions-bank | hash://md5/e8e989e8f12e15ccf50455152d68d2ee |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/ncbi-filoviridae | hash://md5/842bd7820adffa756231ef7d6e73a9a6 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/ncbi-orthomyxoviridae | hash://md5/5d21ac96d77460c6efa40470cf501880 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/ncbi-paramyxoviridae | hash://md5/b188e2c9c66601c33c2d26079c730f6d |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/ncbi-rhabdoviridae | hash://md5/f5e2b451ec45b89b3deff7f5f4882152 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/ncbi-virus | hash://md5/4b007357ba5f8b3b482082d9bf1e37e2 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/NeoBat_Interactions | hash://md5/1e32ca7df8b9f7645f35a3bc6c0f7a83 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/neofrugivory | hash://md5/eca15858e4537cda6d2299376539e398 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/noaa-reem | hash://md5/ec0726a85550b89084a31f6e44988212 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/olival2017 | hash://md5/d8cdd2184ecd7f88ecf3d5b83f8d6cf3 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/olivier2019 | hash://md5/fd020dcd4cd0a3d2db7a82b7f2b9eade |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/ollerton2022 | hash://md5/32fc07a134e3a9e74ad186a8fbba26e9 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/osal-ar | hash://md5/da80906057aa9899746b805b3457196c |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/padil-bee | hash://md5/97be2459c1ab8ea87e30e238a218cd11 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/paz2021 | hash://md5/b625ec71acea9ebdc28aa89e2ce6b293 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/pdd | hash://md5/6b45360b50209e6c06e65e46870a78f6 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/pensoft-dwca | hash://md5/d753da7abc878f1800a36604f0b22893 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/pensoft-ipt | hash://md5/feafab67da3ccc20728e08b23d538d32 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/pensoft-table | hash://md5/99e8ec0d0862a87f71769100b233d09a |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/planque2014 | hash://md5/4b35794c00d726e50dc689b278936fb3 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/plazi-covid19 | hash://md5/2b54225ba36ceea5240daab5819b1d60 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/pocock2012 | hash://md5/d8f6d8ddafbf5a4bbd6a7bf2cc798f69 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/pocock2021 | hash://md5/2df9e5209aefb26dd3a987f5252bcc2d |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/pollinators-of-apocynaceae-database | hash://md5/1487fb80afdc7e8bbfb5856c9c89df55 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/preston2012 | hash://md5/bdd4c7bf2b2ec3bea6fb3b38441b372b |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/psuc-ento | hash://md5/b03fb3303a4a123eb50a194a58480b2e |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/pu-perc | hash://md5/b6dda8832cf7b8098f37414e09cb9ab9 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/raymond | hash://md5/ef9872bb1b331017b98ab1e4ef1cc8ea |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/rcpol | hash://md5/5fba6762aa138643de0c7555a2f3a6d3 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/reeder2021 | hash://md5/028685a2f6fdb21ead5d76091e8f9812 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/refuted-biotic-interactions-by-eol | hash://md5/5f958b14eb086b859bef150620376d2e |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/refuted-interaction-data | hash://md5/b942bf71b625ddbd7c6815a4d7ad2c63 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/robledo | hash://md5/dbf982cf91e2d9fcb08cab49e9ca8eaf |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/roopnarine | hash://md5/96045de55c8e4c0a27b2a376648172f6 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/rskm-owlpellet | hash://md5/cb724cbae2c02d07f47f7ec317f787fa |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/russo2022 | hash://md5/18eab8c75f66eb218d22794516dc9342 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/sabina2022 | hash://md5/eded49380b17b65a120ecb11e39b7114 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/saito2016 | hash://md5/d2371ce21679cb22f9457de508cf224d |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/saproxylic | hash://md5/7145c8edf511a3fd46a1c1b7f2a65cfa |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/sawflies | hash://md5/7caff71d748d37f6594635b85e6719bc |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/scan | hash://md5/58de50154e330c331993fe5d0852ad84 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/scar | hash://md5/1376a661aee115342869f99165b5425d |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/schwarz2021 | hash://md5/dd114cefc42693a0902284e3538e05ea |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/sdnhm-sdmc | hash://md5/fedd1856d0e3f353ed2c1e41ab58273e |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/sealifebase | hash://md5/9184b3e79974a33d0cc6b15bc8770224 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/Seton-1929 | hash://md5/6b634929b024821f04be3577141d318f |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/siad | hash://md5/8c417416da43d2d28e234c20a64f9ea5 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/sibcolombia2023 | hash://md5/b63c72a646369d6c5bcd86a130c5326a |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/sib-colombia | hash://md5/065f14b4a9d14804ff787195d47bb62c |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/sousa_da_silva_2025 | hash://md5/d2a056b24cb307642562d9d20877d4a0 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/species-interaction-dataset-inventory | hash://md5/8dcdc413b12f966c34b57866482eff27 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/spire | hash://md5/8762e86fba571732b84e010be8c3714d |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/squamatabase | hash://md5/28ae0aec671c8289c4ff064c824a006a |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/strona | hash://md5/74b4ee1a8508bc4baa904f176ce1d85d |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/strong2014 | hash://md5/2f5101368929c38e851e7d0632de04f2 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/szentivanyi2019 | hash://md5/ef445abc0772dcaba70087ae1963c325 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/szoboszlai2015 | hash://md5/5b5401bf5d0828fdafe8956637a24368 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/tamuic-ent | hash://md5/4bd7ed560f9d627f59cd385fbec5a61e |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/taxonworks | hash://md5/2070d08b6a49956070a9c241e169ea22 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/template-dataset | hash://md5/3c14f4631e7135c765f4776f7d48fb92 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/tetra-eu | hash://md5/913860140ed57f55934f87ed76279890 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/thieltges2011 | hash://md5/f867f99a3c8903aaef80d9783797a80d |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/thomas-sabaj2020 | hash://md5/c30db1bef0e394b6b5bcae1205321b0f |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/tmh-across-systems | hash://md5/34a388b565db9cac11a11093634ced3a |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/traitwebs | hash://md5/7bc7cd067477ee4c65f1abb20ed880cc |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/tuneu-corral2023 | hash://md5/0a4d5b348685edaf5ca223d0539bb856 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/ucm-ucmc | hash://md5/c2694b8513a6b38b809ebad4a4476938 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/ucsb-ac | hash://md5/0ec57d881b2a4d337926a07a6a3fc7e7 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/ucsb-cch | hash://md5/50fa6c49da902ccfc969f7d4e988c928 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/ucsb-izc | hash://md5/2d9ef974add28bfe8f02b868736b147a |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/uhim | hash://md5/c53deadd40ce70c1788764a8b18a397a |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/ummz-ummzi | hash://md5/9bc2ea57750528c477fe2f1e8ba6a08e |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/unhc-unhc | hash://md5/33e1785c82495a491b2d79824d87801f |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/unite | hash://md5/5688ddefe17a0a2f01e5a5dd7e229e0e |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/universityces2023 | hash://md5/f5863c1d2b0554419839b3601c580846 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/unl-nsm | hash://md5/858b6c2db7dbec236b7cde256095f250 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/uredinales-belgium-checklist | hash://md5/261f8c9404bfc37fa02553ab068170fd |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/usda-fungus-host | hash://md5/18a0db4b0fc6c38d5138c9e42c721b9d |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/usgs-bison | hash://md5/261382102932dd4b0f8a115e513381e1 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/usgs-pollinator-library | hash://md5/84bbbe92d69937112435fb3cd146493a |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/usnmentflea | hash://md5/401e3ef90eb4167c79c71ef928d2acc8 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/usnm-ixodes | hash://md5/58fa17026fe6e9938a282c98010487ab |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/usnm-ixodes | hash://md5/58fa17026fe6e9938a282c98010487ab |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/usnm | hash://md5/101040870025f3f7a2f0630ecdfb8ff3 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/utah-piper | hash://md5/50684b3354c564d5b8458a22a541ec15 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/ut-utbfl | hash://md5/ce7c1cafe20efa21735387b302a05912 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/uwsp-para | hash://md5/cb16c33810daa8777b0250cc8781b962 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/vertnet | hash://md5/6c194df8ddb37844f7b4f1258c81d93d |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/virion | hash://md5/582b389869e04c7563c2e3994980eac3 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/virjendb | hash://md5/e45c4d2b9d3a897add0f06fca6521537 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/virus-host-db | hash://md5/a33a14821015e68ac0e0a1ce35248a0e |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/wardeh2015 | hash://md5/ed5ec44c768ad91a517981298b57a476 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/wardeh2021 | hash://md5/54c82e24b92e31b3dbdf05077fa59631 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/web-of-life | hash://md5/df58ae253b9a759e387c7f78d05de592 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/wis-ih-wirc | hash://md5/6720718278fa7cb9d2bcd450e6f04250 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/wood2015 | hash://md5/d75dfe6f1bb429ad07eddd9f0db5c322 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/world-spider-traits | hash://md5/b33b175bc20783dc167ff08edc439778 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/yale-peabody | hash://md5/7179cae429d9a639931151a14d1691bf |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/zander2011 | hash://md5/1cc6510bddec5d73036cddd311f813e5 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/zmo-gyrodactylus | hash://md5/66a4560c02528648f9e3f33c82abf463 |
| urn:lsid:globalbioticinteractions.org:dataset:globalbioticinteractions/zover | hash://md5/32b7ed726d89b11aa96263b1c30dc217 |
| urn:lsid:globalbioticinteractions.org:dataset:GoMexSI/abascal | hash://md5/40f5775b0a452cb55b734b9ca47583c8 |
| urn:lsid:globalbioticinteractions.org:dataset:GoMexSI/akin | hash://md5/9e8fda286f17d3549d3601b4f7826e7e |
| urn:lsid:globalbioticinteractions.org:dataset:GoMexSI/blewett | hash://md5/9777affaf94c0e9e9e8d9611e9b6aff7 |
| urn:lsid:globalbioticinteractions.org:dataset:GoMexSI/interaction-data | hash://md5/85e90297735515115672dbef864b08e2 |
| urn:lsid:globalbioticinteractions.org:dataset:GoMexSI/simons | hash://md5/28f0cf66b7aaee55e9ef02ccfa5e6bd1 |
| urn:lsid:globalbioticinteractions.org:dataset:holmesjtg/okaloosa-county-coastal-uplands | hash://md5/83b1780843b67040491566abde612994 |
| urn:lsid:globalbioticinteractions.org:dataset:hurlbertlab/dietdatabase | hash://md5/266b055b7c49cb388d5201dcae2c9f7e |
| urn:lsid:globalbioticinteractions.org:dataset:ibartomeus/OBservData | hash://md5/35b1210f8b22088babe73b2b9012c15e |
| urn:lsid:globalbioticinteractions.org:dataset:IracyMaia/Database-for-species-interation | hash://md5/1d730a1e271cf373bb0ffa22e918623a |
| urn:lsid:globalbioticinteractions.org:dataset:ischnura/vespa-velutina-interactions | hash://md5/ce1525bbd78a5726d44b2f0d6ccfa347 |
| urn:lsid:globalbioticinteractions.org:dataset:jeremy-cohen/tmh-across-systems | hash://md5/acdc297bf51bf19135d955dfa2964aca |
| urn:lsid:globalbioticinteractions.org:dataset:jhammock/beaverfeast | hash://md5/e36935f1b36d286ca744395def87b18f |
| urn:lsid:globalbioticinteractions.org:dataset:jhammock/Checklist-of-Micro-Organisms-Associated-With-Tree-Seeds-in-the-World | hash://md5/b68cb11a3fe2935ba7987f5bbc1a6f1b |
| urn:lsid:globalbioticinteractions.org:dataset:jhammock/Layman-and-Allgeier-Lionfish | hash://md5/fa2bd6d5b2b55657bc4cf3cbad9aba53 |
| urn:lsid:globalbioticinteractions.org:dataset:jhpoelen/animal-disease | hash://md5/6f38fb00ac1cda1a5327078208d1594d |
| urn:lsid:globalbioticinteractions.org:dataset:jhpoelen/caradonna2020 | hash://md5/b2321062bf4720e04b0e3ca93b2d92d7 |
| urn:lsid:globalbioticinteractions.org:dataset:jhpoelen/database | hash://md5/a3356d29c353252a3469d5c11700309e |
| urn:lsid:globalbioticinteractions.org:dataset:jhpoelen/EDWIP | hash://md5/f038daae0e9032ea540dfb8795798656 |
| urn:lsid:globalbioticinteractions.org:dataset:jhpoelen/geosymbio | hash://md5/a3e81714602eb66e851affe00ab40af8 |
| urn:lsid:globalbioticinteractions.org:dataset:jhpoelen/Gippet2023_GiantLandSnails | hash://md5/65a3804d52e605937c5568270dd7e63c |
| urn:lsid:globalbioticinteractions.org:dataset:jhpoelen/JLewis_GoMexSi | hash://md5/29d57aa749d37c4d2c20920c56691910 |
| urn:lsid:globalbioticinteractions.org:dataset:jhpoelen/Lice | hash://md5/1eae1c59fa863791bfa0fa3a4284042d |
| urn:lsid:globalbioticinteractions.org:dataset:jhpoelen/paleo-interactions-test | hash://md5/307f55aeff9a78f2a57bd040ef78455d |
| urn:lsid:globalbioticinteractions.org:dataset:jhpoelen/PIDA | hash://md5/a422881718dcf7ff4e88caea1f4dd997 |
| urn:lsid:globalbioticinteractions.org:dataset:jhpoelen/Procambarus-acutus | hash://md5/a62ae6afd630399bb58d5447cc25ea38 |
| urn:lsid:globalbioticinteractions.org:dataset:jhpoelen/random-forests-for-predicting-predator-prey-interactions-in-terrestrial-vertebrates | hash://md5/4b9ccb016f814dd537a58f5a2a464e9c |
| urn:lsid:globalbioticinteractions.org:dataset:jhpoelen/taxonomy-darwin-core | hash://md5/aa84a7b7fcc5ed6ca4508a1b3068e97e |
| urn:lsid:globalbioticinteractions.org:dataset:jhpoelen/uredinales-belgium-checklist | hash://md5/296a8a1755c559023989f0d3b1ac7b4d |
| urn:lsid:globalbioticinteractions.org:dataset:JohnLlewelyn/random-forests-for-predicting-predator-prey-interactions-in-terrestrial-vertebrates | hash://md5/4ae328d4184af32db6cbf95329602420 |
| urn:lsid:globalbioticinteractions.org:dataset:JoseBSL/EuPPollNet | hash://md5/346321bf93ff80852d25f24efaafb18d |
| urn:lsid:globalbioticinteractions.org:dataset:KatjaSchulz/dinosaur-biotic-interactions | hash://md5/843fc72324a619823b65bd3975e244e5 |
| urn:lsid:globalbioticinteractions.org:dataset:kbseah/ppsdb-globi-export | hash://md5/58f24005232710119cb55ecb62e55a66 |
| urn:lsid:globalbioticinteractions.org:dataset:LauraAbr/Amur-river-clam | hash://md5/1b5343f55183e51f49725294f66d546a |
| urn:lsid:globalbioticinteractions.org:dataset:LauraAbr/Jumping-Worm | hash://md5/1bc711900d62215a8f7afc373c058647 |
| urn:lsid:globalbioticinteractions.org:dataset:LauraAbr/Procambarus-acutus | hash://md5/d49673529392cc7cd8e9828d0587a79d |
| urn:lsid:globalbioticinteractions.org:dataset:liampshaw/Pathogen-host-range | hash://md5/fc8777cd05b09b1288f306b22b565aba |
| urn:lsid:globalbioticinteractions.org:dataset:mammalbase/database | hash://md5/0d9e5b7c93c5e27fbd9d1bf34c879a4a |
| urn:lsid:globalbioticinteractions.org:dataset:MariaFaticov/Insetbugs | hash://md5/98f2c8bb64d5c2249eda3bc73d69a794 |
| urn:lsid:globalbioticinteractions.org:dataset:mdrishti/pushPullIntxn | hash://md5/fe5acba070052cc4a26397d62f6f977f |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Adams-et-al.-2016 | hash://md5/b51d78f3b47afe83c3ee77fb02a800fe |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/A-Host-parasite-Catalog-of-North-American-Tachinidae-Diptera- | hash://md5/31c439607fb5700cdff30daa5a9de902 |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Aluja-et-al-New-Host-Plant-and-Distribution-Records-in-Mexico | hash://md5/794d41d6f96996cc7b838d4955d66267 |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Amphibians-and-Reptiles-Predators-and-Prey.-Amphibians-and-Birds | hash://md5/ddb3c321e56406684c5c0d1a42812bd2 |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Anemonefish | hash://md5/e18bae462cfdf13c3768f560d4275c7c |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Ant-Plant-Interactions | hash://md5/a99b3f7eedf22a511f4d4110656c235f |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Arctic-food-web | hash://md5/c21985708124e07cbd6a406aee9bbaec |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Arctos | hash://md5/55ca678493a724abe38a16d97be55214 |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Bald-Eagle-Diet | hash://md5/cbbd3eea5bf171d73160d299ed2789f9 |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Bascompte-J.-Meli-n-C.J.-and-Sala-E.-2005 | hash://md5/46c2873634c406469156455103e3b5ab |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Bat-flies | hash://md5/bf13e6a35ccbe787250f5b6726bb62c4 |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Benesh-et-al-2017 | hash://md5/e2c94b3c018c3d583f1e57885dfde4c3 |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/BHL-Interactions | hash://md5/d3d8455937559ca06534c1f31e681bec |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Biological-Station-Arthropod-Collection | hash://md5/1d27905d5d8ee620d644bfc0687871dd |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Bird-Parasite | hash://md5/44876389b050cecc60a27cd1e1456c84 |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Birds-Consumed-by-the-Invasive-Burmese-Python-Python-molurus-bivittatus- | hash://md5/789d6422a9c8699825d639a3e3df080e |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Buprestidae-of-North-America | hash://md5/7d2a513ae776958227c5e499115d38c1 |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Canadian-freshwater-fish-and-their-metazoan-parasites | hash://md5/0cb6ba22925a1ae805326ea00598e6c1 |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Carpinteria-Salt-Marsh-Web | hash://md5/3dff1b66abd8295f7a8c07597e7d0a36 |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Checklist-of-Micro-Organisms-Associated-With-Tree-Seeds-in-the-World | hash://md5/5d328022f707d7677b9d5f63bb2aa713 |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Clements-R.-E.-and-F.-L.-Long | hash://md5/83b754c2b2a8e4fec9aa299c0536248c |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Coccidae-of-Egypt | hash://md5/014e190db109c8de948a61f7a0a9c5dd |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Dapstrom-integrated-database-and-portal-for-fish-stomach-records | hash://md5/61405688b33fbf330cfeb409e62b41a2 |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Diseases-of-Coffee-in-Porto-Rico | hash://md5/b52fcb130d92ebd9cfc8012d4add6c60 |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Ecological-Database-of-the-World-s-Insect-Pathogens | hash://md5/e45c70668ad34fe621e58a2625538891 |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Feeding-Niches-of-Hummingbirds-in-a-Trinidad-Valley | hash://md5/3232bf6dd64cb7a296568a8fb540c28b |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Fishes-of-Basrah-Province-Iraq | hash://md5/b3007dd1e0ab86d7b4a48dd7802a4a15 |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Flea-Collection | hash://md5/e640ca0200f3d82f64456c5b637f5057 |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Flowers-and-insects-lists-of-visitors-to-four-hundred-and-fifty-three-flowers | hash://md5/257a1ada5e4f0754f344eceb818cae34 |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Fly-parasites | hash://md5/ecfc4a45e52c15df4de58bddfa4ae040 |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Fossil-snake | hash://md5/9743fd8c3e65ca7406b8f6ec8bcedc7a |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/grazers-of-North-American-aquatic-plants | hash://md5/60749270fbc8a59855c8be3408a4f107 |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Greystock-et-al.-2015 | hash://md5/db2e4b7d8b54bce78be5bbcdf9b866d6 |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Host-plant-and-distribution-records | hash://md5/96f21392d90cbd63c12c2f2d0608608b |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Hummingbird-and-Flower-Interactions | hash://md5/5941caa422aa91e48808f8ed82aff450 |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Insect-Herbivores-on-Goldenrods-Solidago-altissima | hash://md5/034471a1da4b6dccb817c81f586ba27c |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Interaction-data-by-SEM | hash://md5/0d124d90dc570591e624371f09a4f517 |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Jstor-Collecton | hash://md5/de71f5976b7b2aaa15f704584dda1898 |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Lara-C.-2006 | hash://md5/7df02da394bd3bceaffd2d7267d3c775 |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Lice | hash://md5/09f63d257d625bb96535ac8b61864cd9 |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Lichenous | hash://md5/538abefb945e73e158a847016d565d60 |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/parasitic-plant-connection | hash://md5/cd1e9b5cda7ee82e55fc1c2522559481 |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Plant-ant-webs | hash://md5/c53b86b14e0b304eb817e6b5e4cd834b |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Plant-Disease-Survey | hash://md5/be33195ebea11eff658a96dae899ccb5 |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Plant-Herbivore-Web | hash://md5/ce8bd2918e83b2ef10de04e503b5a00d |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Plant-Pollinator-Web | hash://md5/6d203140d0d7041ddb68493aa1afdd3c |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/PLANT-SEED-DISPERSER-WEBS | hash://md5/f6387fc5b893022b52a91e90aa7efd4b |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Pollination-Collection | hash://md5/45e01a3d185bebefe0c817999626e52e |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Seaweed | hash://md5/d1b6bccd4ef6f19688f6fbe8ff89b8d3 |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Serengeti | hash://md5/bc68f18ce0325bfc2c4dbbe8347c167c |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Seton-1929 | hash://md5/383854f463e159400ea18ff60bbd90c9 |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Smithsonian-Repository-Interactions | hash://md5/610570ac3d2a1efb53ce08805e79654c |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/The-Butterflies-of-North-America | hash://md5/3993aebad5a04be82adc80562b855537 |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/US-National-Parasite-Collection | hash://md5/2d4710a1212994c2538800ca9156bbf4 |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Wardeh-et-al.-2015 | hash://md5/b8868d7333a0823a8be6967ecf61b5a8 |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Weidinger-et-al.-2009 | hash://md5/7e43de6d2a1e16d7e63fc3dd60312990 |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Wenzel-Tipton-Classified-List-of-Hosts-and-Parasites | hash://md5/fad57a7af93ec566947189dfb7dd16ff |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Wharton-and-Marsh-1978.-New-World-Opiinae | hash://md5/d6c924e4412c10d2a234e4e0211758df |
| urn:lsid:globalbioticinteractions.org:dataset:millerse/Zika-Virus | hash://md5/115a8034f02515ac209e8b8c54fbc354 |
| urn:lsid:globalbioticinteractions.org:dataset:NASUA/ZalophusPredatoryInteractions | hash://md5/2b718a9924d6f93ce7cab8be49eeb195 |
| urn:lsid:globalbioticinteractions.org:dataset:NatalyaZapata/BatFly_Interactions | hash://md5/6bcea871a004390b72d7eff4b80a754a |
| urn:lsid:globalbioticinteractions.org:dataset:ninacourlee/Andromeda-polifolia-fungal-consortia | hash://md5/0ecd983f57cdfe348a55b7e6bd480f34 |
| urn:lsid:globalbioticinteractions.org:dataset:osmiddleton/CarniDIET-Database | hash://md5/b512b90f44a71b795c09514c37d61dcd |
| urn:lsid:globalbioticinteractions.org:dataset:ParasiteTracker/tick-interaction-database | hash://md5/665171511f6c2053a361249a28c97fa0 |
| urn:lsid:globalbioticinteractions.org:dataset:ParasiteTracker/vampire-moth-dwca | hash://md5/399bd3143460b9e5e9d8962f1fb16e97 |
| urn:lsid:globalbioticinteractions.org:dataset:ParasiteTracker/vampire-moths-and-their-fruit-piercing-relatives-Occurrence-Records | hash://md5/4dea0347b5779174653f429dec64da0d |
| urn:lsid:globalbioticinteractions.org:dataset:pedroj/FRUBASE | hash://md5/f7ade5b06a49e7aba9b29ccc12357daf |
| urn:lsid:globalbioticinteractions.org:dataset:pensoft/pensoft-interaction-tables | hash://md5/214a21ac0f8ee1f2a10c4a8e47367d6b |
| urn:lsid:globalbioticinteractions.org:dataset:PHI-base/data | hash://md5/ce0b67ad31fae240ecc4e2150ab66868 |
| urn:lsid:globalbioticinteractions.org:dataset:qgroom/bat-co-roosting-database | hash://md5/51fe4c15cb8d2ec1fffff84129fc52f1 |
| urn:lsid:globalbioticinteractions.org:dataset:qgroom/batinterations | hash://md5/f78ce7938ca362b3c34e1bd68e334fe4 |
| urn:lsid:globalbioticinteractions.org:dataset:qgroom/bedbugs | hash://md5/f931b4bcd8f024c37ad69af7dbae4887 |
| urn:lsid:globalbioticinteractions.org:dataset:qgroom/iguana | hash://md5/e221d6ce03642e054dc9b6519d6c9203 |
| urn:lsid:globalbioticinteractions.org:dataset:qgroom/refuteINAT | hash://md5/7d19c1d47bbf88ab061ceca80e9e6ca6 |
| urn:lsid:globalbioticinteractions.org:dataset:qgroom/Sceliphron | hash://md5/8b608b17e34230c5b4697504e6ff98a5 |
| urn:lsid:globalbioticinteractions.org:dataset:qgroom/Vespa-velutina | hash://md5/590d7f2941c8c31bfafb4afd4a3a4368 |
| urn:lsid:globalbioticinteractions.org:dataset:ramalok/PIDA | hash://md5/b7ae7acdfac380c2cceb6ce8b9c82268 |
| urn:lsid:globalbioticinteractions.org:dataset:SabinaVlad/iguanas-interactions | hash://md5/fa235091ec329fc03ff139c52a6ccb8c |
| urn:lsid:globalbioticinteractions.org:dataset:SabinaVlad/iguana | hash://md5/355505feba331702abd786c492c37f19 |
| urn:lsid:globalbioticinteractions.org:dataset:seltmann/ParasiteTracker-Globi | hash://md5/d6c598ca730104affaa3c1624fd79a3b |
| urn:lsid:globalbioticinteractions.org:dataset:seltmann/taxonomy-darwin-core | hash://md5/43a0585878b794efcbc1a339af29a121 |
| urn:lsid:globalbioticinteractions.org:dataset:seltmann/vampire-moth-globi | hash://md5/1f704a216906ecfdaffd81ff10b7b796 |
| urn:lsid:globalbioticinteractions.org:dataset:seltmann/vampire-moths-and-their-fruit-piercing-relatives | hash://md5/051d497417988a6560c05d8c73f6e2e3 |
| urn:lsid:globalbioticinteractions.org:dataset:SimoneLioy/Vespa-velutina-interactions | hash://md5/b78cec2bb01456dd3f802601f30b9bd5 |
| urn:lsid:globalbioticinteractions.org:dataset:SternerLab/sterner2023 | hash://md5/e69f0af69e6e89722ca3434a60219f4f |
| urn:lsid:globalbioticinteractions.org:dataset:SternerLab/SternerLab-MammalVirusData | hash://md5/e59000b00ce0a68a512828bfac0cc18b |
| urn:lsid:globalbioticinteractions.org:dataset:taddallas/EDWIP | hash://md5/3635a6f23334dd4a2a699dd405b6a206 |
| urn:lsid:globalbioticinteractions.org:dataset:teleaslamellatus/Aphanogmus-odiorniensis | hash://md5/a26cbe3ca0d89c090939f62eb129c4d7 |
| urn:lsid:globalbioticinteractions.org:dataset:thebateslab/mycoportal | hash://md5/d6910b4d123398d3f270d7ac222e12e3 |
| urn:lsid:globalbioticinteractions.org:dataset:theptin/Thamnophis-GloBI | hash://md5/008e7005bcb58e845b5b9c3d4e51c9e5 |
| urn:lsid:globalbioticinteractions.org:dataset:tkarim/izinteractions | hash://md5/1d848ce269ee5cdef9579847ee3280e4 |
| urn:lsid:globalbioticinteractions.org:dataset:tkarim/paleo-interactions-test | hash://md5/9cc05c064bf9b19bb8e9d28b81f44d01 |
| urn:lsid:globalbioticinteractions.org:dataset:trias-project/eu-species-of-concern-interactions | hash://md5/020a562c2c03af835d747152e8dae9ef |
| urn:lsid:globalbioticinteractions.org:dataset:zedomel/ballantyne2015 | hash://md5/d32b4736f736d6a94827cd4a0fea3ed4 |
| urn:lsid:globalbioticinteractions.org:dataset:zedomel/bartomeus2008 | hash://md5/fa3898a9ec0f435f7dab9528aacd64e9 |
| urn:lsid:globalbioticinteractions.org:dataset:zedomel/caradonna2020 | hash://md5/069f558bf1a88f540a0e370bfc959d76 |
| urn:lsid:globalbioticinteractions.org:dataset:zedomel/magrach2017 | hash://md5/4cb0ccfe94fc2dcb25db2b160f6b87fe |
| urn:lsid:globalbioticinteractions.org:dataset:zedomel/olito2015 | hash://md5/8b109dec50b09a8388369231f8c79c77 |
| urn:lsid:globalbioticinteractions.org:dataset:zedomel/portalier2018 | hash://md5/e9df7409f68ae03e8cb7d4a75a51b853 |
| urn:lsid:globalbioticinteractions.org:dataset:zedomel/redhead2018 | hash://md5/5587b71d93755ec1085f9f425823971a |
| urn:lsid:globalbioticinteractions.org:dataset:zedomel/udy2020 | hash://md5/42994eeb20ef33a6a188cf31cb4619b5 |
| urn:lsid:globalbioticinteractions.org:dataset:ZekeMarshall/ZMBioticInteractions | hash://md5/7e7ffc737f723321ca474ee497efafce |
