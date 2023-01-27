#!/bin/bash
#
# Extract image URLs from DwC-A archive using Preston, grep, and jq.
#

preston ls\
 | preston dwc-stream\
 | grep "LACMIP 9951.3"\
 | jq .
