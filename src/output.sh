#!/bin/bash
BASEDIR=$PWD
set +x
. .colors.sh

zip -r outputs.zip $output_dir 
