#!/bin/bash

#
# Requirements:
#
# ensure language packs are installed. e.g. for French
#> sudo apt-get install language-pack-fr
#

# perform all actions relative to the path of this script
SCRIPT_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$SCRIPT_DIR" ]]; then
  SCRIPT_DIR="$PWD"
else
  cd $SCRIPT_DIR
  SCRIPT_DIR="$PWD"
fi

# pushing docs to localisation platform (transifex) is only done on Jenkins
LOCALISE=0
if [[ `id -un` == "jenkins" ]]; then
  # and only where configured
  if [ -f ~/.transifexrc ]; then LOCALISE=1; fi
fi

# set up the python environment
if [ ! -d "venv" ]; then
    source venv_setup
fi
source ./venv/bin/activate

# script variables
src="$SCRIPT_DIR/src/commonmark/en"
TMPBASE="$SCRIPT_DIR/tmp"
tmp="$TMPBASE/en"
localisation_root="$SCRIPT_DIR/target/commonmark"

# clear the output directories
rm -rf $TMPBASE
mkdir -p $TMPBASE
rm -rf $localisation_root
mkdir -p $localisation_root

# include helper functions
. "$SCRIPT_DIR/lib/doc_functions.sh"

# generate function called for each document
generate(){
    name=$1
    subdir=$2
    selection=$3
    if [ ! $selection ]
    then
      selection="both"
    fi

    echo "+--------------------------------------------------------"
    echo "| Processing: $name"
    echo "+--------------------------------------------------------"

    assemble $name
    update_localizations $name

    # go to the temp directory and build the documents - put output in target directory
    build_docs $name $subdir $selection en en_UK

}


# comment as you wish
# format:
#$> generate <doc name> <chapters subfolder> ["html","pdf","both"]
generate "dhis2_android_user_man" "android"
generate "dhis2_android_capture_config_man" "android"
generate "dhis2_developer_manual" "developer"
generate "dhis2_user_manual_en" "user"
generate "dhis2_end_user_manual" "end-user"
generate "dhis2_implementation_guide" "implementer"
generate "user_stories_book" "user-stories"
generate "dhis2_draft_chapters" "draft"

rm -rf $tmp
