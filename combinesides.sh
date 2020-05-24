#! /bin/bash
band="$1"
album="$2"
sides=`ls "./$band/$album/"`
sidelist=""
for side in $sides 
do
	sidelist="$sidelist \\\"./$band/$album/$side\\\""
done
echo $sidelist
/usr/bin/sox --combine concatenate $sidelist \"$band/$album/full.wav\"
