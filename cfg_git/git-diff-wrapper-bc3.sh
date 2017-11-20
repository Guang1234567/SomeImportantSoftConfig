#!/bin/sh
# diff is called by git with 7 parameters:
# path old-file old-hex old-mode new-file new-hex new-mode
#echo "Beyond Compare 3 prepare to compare below files :"
#echo "path : $1"
#echo "old-file : $2"
#echo "old-hex : $3"
#echo "new-file : $5"
#echo "new-hex : $6"
"d:/dev_kit/Beyond Compare 3/BComp.exe" "$2" "$5" | cat