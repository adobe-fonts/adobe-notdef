#!/usr/bin/env sh

# Get the absolute path to the bash script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

# Build the CID-keyed OpenType/CFF font (OTF)
makeotf -f cidfont.ps -omitMacNames -ff features -fi cidfontinfo -mf FontMenuNameDB -r -stubCmap4 -ch UnicodeAll-UTF32-H

# Removed the 'VORG', 'vhea', and 'vmtx' tables that can be safely
# purged
sfntedit -d VORG,vhea,vmtx AND-Regular.otf

# Convert the OTF to TTF, and remove its "stub" 'DSIG' table
otf2ttf AND-Regular.otf
sfntedit -d DSIG AND-Regular.ttf

# For those who want to replace the glyph with one of their own
# design, the source name-keyed Type 1 font, font.pfa, is supplied as
# an example, along with the AFDKO "mergefonts" mapping file, map.txt,
# that is used to map the glyph to CIDs 0 through 2048 to create the
# source CIDFont resource. The following is the "mergefonts" command
# line:
#
# mergefonts -cid cidfontinfo cidfont.ps map.txt font.pfa
#
# EOF
