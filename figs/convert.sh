#!/bin/bash
for i in *.pdf
do
	filename="${i%.*}"
	convert \-flatten $filename.pdf $filename.png
done
