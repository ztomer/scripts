#!/usr/local/bin/zsh

RSYNC=/usr/local/bin/rsync
PARAM=-aP
# sync music

$RSYNC $PARAM --delete /Volumes/2Tb.Ext/Music/ /mnt/htpc/Data/Music/

# sync program backups
$RSYNC $PARAM --delete /Volumes/2Tb.Ext/Programs\ Backup/\[osX\]/ /mnt/htpc/Binaries/Backup/programs/\[osX\]/

# sync pictures
$RSYNC $PARAM /Volumes/2Tb.Ext/pictures/ /mnt/htpc/Data/pictures/

# sync books - info
# first to hdd
$RSYNC $PARAM /Users/ztomer/Books\ -\ Info/ /Volumes/2Tb.Ext/Books\ -\ Info/

#now to server
$RSYNC $PARAM /Users/ztomer/Books\ -\ Info/ /mnt/htpc/Binaries/Backup/Books\ -\ Info/

# books - Reading
$RSYNC $PARAM /Users/ztomer/Books\ -\ Reading/ /mnt/htpc/Binaries/Backup/Books\ -\ Reading/

# Comics
$RSYNC $PARAM /Volumes/2Tb.Ext/Comics/ /mnt/htpc/Binaries/Backup/Comics/

# OsX games
$RSYNC $PARAM  /Volumes/2Tb.Ext/Games\ backup/\[OsX\]/ /mnt/htpc/Binaries/Backup/Games/\[OsX\]/

#PC games
$RSYNC $PARAM  /Volumes/2Tb.Ext/Games\ backup/\[PC\]/ /mnt/htpc/Binaries/Backup/Games/\[PC\]/

# GOG games
$RSYNC $PARAM  /Volumes/2Tb.Ext/Games\ backup/GOG/ /mnt/htpc/Binaries/Backup/Games/GOG/



