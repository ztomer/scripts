#!/bin/bash
EXPECTED="com.logitech.gkeysdk.501  com.logitech.lcdmon.501"

ls -d ~/.Trash/Recovered\ files* | while read TRASH_DIR ; do
    for TRASH_FILE in $(ls "$TRASH_DIR") ; do
        for EXP_FILE in $EXPECTED ; do
            [ "$TRASH_FILE" == "$EXP_FILE" ] && rm -f "$TRASH_DIR"/"$TRASH_FILE"
        done
    done
    rmdir "$TRASH_DIR" &> /dev/null || echo "There are other files in $TRASH_DIR"
done