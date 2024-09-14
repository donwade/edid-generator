#!/bin/bash
set -x
for FILE in *.S ; do
    #echo $FILE
    NAME="`just_fileNoExt $FILE`"
    [ "$NAME" != "edid" ] || continue
    echo $NAME
    echo "git mv $NAME.S $NAME-p60.S"
    sleep 1
    git mv $NAME.S $NAME-p60.S
done

