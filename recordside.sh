#! /bin/bash
band="$1"
album="$2"
side="$3"
length=$(($4 * 60))
mkdir -p "$band/$album"
/usr/bin/arecord -f S32_LE -c 2 -r 44100 -t wav -d $length "$band/$album/side$side.wav"
