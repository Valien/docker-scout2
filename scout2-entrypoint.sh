#!/bin/sh
set -e

cd ../Scout2
python Scout2.py --profile $AWS_PROFILE
cp -R inc* /reports
cp report*.html /reports
