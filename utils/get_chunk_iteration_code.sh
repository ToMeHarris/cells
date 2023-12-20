#!/bin/sh

CHUNK_SIZE=$1
FILE_PATH="../data/cells/functions/chunks/iterate.mcfunction"
FUNCTION_PATH="cells:simulate/block"

rm $FILE_PATH
echo "function $FUNCTION_PATH" >> $FILE_PATH
for ((x=2; x < CHUNK_SIZE; x+=2))
do
	for ((y=2; y < CHUNK_SIZE; y+=2))
	do
		for ((z=2; z < CHUNK_SIZE; z+=2))
		do
			echo "execute positioned ~$x ~$y ~$z run function $FUNCTION_PATH" >> $FILE_PATH
		done
	done
done