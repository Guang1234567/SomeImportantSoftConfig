#!/bin/sh
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

icdiff $ICDIFF_OPTIONS $2 $5 | $GITPAGER