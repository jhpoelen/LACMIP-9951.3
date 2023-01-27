#!/bin/bash
#
# Extract image URLs from DwC-A archive using Preston, grep, and jq.
#

preston ls\
 | preston dwc-stream\
 | grep "LACMIP 9951.3"\
 | grep URI\
 | jq --raw-output '.["http://rs.tdwg.org/ac/terms/accessURI"], .["http://rs.tdwg.org/ac/terms/thumbnailAccessURI"], .["http://rs.tdwg.org/ac/terms/goodQualityAccessURI"], .["http://rs.tdwg.org/ac/terms/furtherInformationURL"]'\
 | grep -v null
