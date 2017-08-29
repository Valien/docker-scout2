#!/bin/sh
set -e

cd ../Scout2
python Scout2.py --profile $AWS_PROFILE
cp -R scout2-report/inc* /reports
cp scout2-report/report*.html /reports