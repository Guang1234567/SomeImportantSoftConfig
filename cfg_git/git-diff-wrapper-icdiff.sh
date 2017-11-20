#!/bin/sh
# diff is called by git with 7 parameters:
# path old-file old-hex old-mode new-file new-hex new-mode
#echo "Icdiff prepare to compare below files :"
GITPAGER=$(git config --get core.pager)

ICDIFF_OPTIONS=$(git config --get icdiff.options)

if [ -z "$GITPAGER" ]; then
  GITPAGER="$PAGER"
fi

if [ -z "$GITPAGER" ]; then
  GITPAGER="less"
fi

if [ "$GITPAGER" = "more" -o "$GITPAGER" = "less" ]; then
  GITPAGER="$GITPAGER -R"
fi

"d:/dev_kit/Python27/python.exe" "d:/dev_kit/icdiff/icdiff" $ICDIFF_OPTIONS $2 $5 | $GITPAGER