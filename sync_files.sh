#!/usr/local/bin/zsh

RSYNC=/usr/local/bin/rsync
PARAM=-aP
EXTERNAL_HDD=/Volumes/2Tb.Ext
REMOTE_BIN=/mnt/htpc/Binaries
REMOTE_DATA=/mnt/htpc/Data
USER_DIR=/Users/ztomer
# sync music

$RSYNC $PARAM --delete $EXTERNAL_HDD/Music/ $REMOTE_DATA/Music/

# sync program backups
$RSYNC $PARAM --delete $EXTERNAL_HDD/Programs\ Backup/\[osX\]/ $REMOTE_BIN/Backup/programs/\[osX\]/

# sync program backups
$RSYNC $PARAM --delete $EXTERNAL_HDD/Programs\ Backup/\[pc\]/ $REMOTE_BIN/Backup/programs/\[pc\]/

# sync pictures
$RSYNC $PARAM $EXTERNAL_HDD/pictures/ $REMOTE_DATA/pictures/

# sync books - info
# first to hdd
$RSYNC $PARAM $USER_DIR/Books\ -\ Info/ $EXTERNAL_HDD/Books\ -\ Info/

#now to server
$RSYNC $PARAM $USER_DIR/Books\ -\ Info/ $REMOTE_BIN/Backup/Books\ -\ Info/

# books - Reading
$RSYNC $PARAM $USER_DIR/Books\ -\ Reading/ $REMOTE_BIN/Backup/Books\ -\ Reading/

# Comics
$RSYNC $PARAM $EXTERNAL_HDD/Comics/ $REMOTE_BIN/Backup/Comics/

# OsX games
$RSYNC $PARAM  $EXTERNAL_HDD/Games\ backup/\[OsX\]/ $REMOTE_BIN/Backup/Games/\[OsX\]/

#PC games
$RSYNC $PARAM  $EXTERNAL_HDD/Games\ backup/\[PC\]/ $REMOTE_BIN/Backup/Games/\[PC\]/

# GOG games
$RSYNC $PARAM  $EXTERNAL_HDD/Games\ backup/GOG/ $REMOTE_BIN/Backup/Games/GOG/

# Projects
$RSYNC $PARAM $USER_DIR/Projects $EXTERNAL_HDD/Projects

