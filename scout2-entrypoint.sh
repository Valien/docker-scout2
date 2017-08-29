#!/bin/sh
set -e

cd ../scout2
python Scout2.py --profile $AWS_PROFILE
cp -R inc* /reports
cp report*.html /reports
