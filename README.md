# Adobe NotDef

*Adobe NotDef* is a special-purpose OpenType font that is based on the Adobe-Identity-0 ROS (*ROS* stands for /Registry, /Ordering, and /Supplement, and refers to the /CIDSystemInfo dictionary entries that define the glyph set name for CID-based character collections). The Adobe-Identity-0 ROS is a special-purpose character collection whose use is not tied to a specific language, and Adobe NotDef is a *special-purpose* OpenType font that is intended to render all Unicode code points using a very obvious *.notdef* glyph, thus the reason why the Adobe-Identity-0 ROS was chosen as the basis for this OpenType font.

Adobe NotDef maps 1,111,998 Unicode code points to 2,048 *.notdef* glyphs (CIDs 1 through 2048). The 2,048 High and Low Surrogates (U+D800 through U+DFFF), the two noncharacters in the BMP and in each of the 16 Supplementary Planes (FFFE and FFFF), and the 32 noncharacters in the range U+FDD0 through U+FDEF are explicitly and intentionally excluded. As a fully-functional OpenType font, the following 10 'sfnt' tables are included: CFF, DSIG, OS/2, cmap, head, hhea, hmtx, maxp, name, and post.

In addition to a functional OpenType/CFF font, a TrueType (TTF) version is also included.

## Building the fonts from source

### Requirements

To build the binary font files from source, you need to have installed the [Adobe Font Development Kit for OpenType](https://github.com/adobe-type-tools/afdko/) (AFDKO). The AFDKO tools are widely used for font development today, and are part of most font editor applications.

### Building the fonts

In this repository, all necessary files are in place for building the CID-keyed OpenType/CFF and TrueType fonts, and the *build.sh* file can simply be executed.

## Getting Involved

For any suggestions for changes, please [create a new issue](https://github.com/adobe-fonts/adobe-notdef/issues) for consideration.

