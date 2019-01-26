#!/usr/bin/env bash
#/bin/bash
#build the site
ng build --prod --aot
#upload files
aws s3 cp ./dist/vbloiseResume3Ui s3://vbloiseResume3Ui --recursive --acl public-read
