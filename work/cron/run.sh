#!/bin/bash

notebook_file=$1
output_file="${notebook_file%.*}_output.ipynb"

cd /home/jovyan/work
/usr/local/bin/jupyter nbconvert --execute "$notebook_file" --to notebook --output "$output_file"