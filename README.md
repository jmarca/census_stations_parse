# Census stations parse

Code to parse the metadata and data for census stations, as downloaded
from PeMS website.

Will create tables in a postgresql database for both the metadata
tables and the actual data observations.

Will populate metadata tables with metadata.  At the moment the most
recent metadata dumps from PeMS are dated 2008, which are likely out
of date.  Need to email them and inquire.

Will populate observations from PeMS into db.

Focus initially is on truck and vehicle classifications, so as to
validate the CalVAD truck imputations.
