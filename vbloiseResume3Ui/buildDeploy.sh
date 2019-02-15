#!/usr/bin/env bash
#/bin/bash
#build the chalice-javascript-jdk
#cd ~/vbloiseResume3/vbloiseResume3Ui/src/chalice-javascript-sdk/
#rm -r *
#cd ~/vbloiseResume3/vbloiseResume3Ui/src/
#rmdir chalice-javascript-sdk
#cd ~/vbloiseResume3/
#chalice generate-sdk ./vbloiseResume3Ui/src
#build the site
#cd ~/vbloiseResume3/vbloiseResume3Ui/
#build the site
ng build --prod --aot
#upload files
aws s3 cp ./dist/vbloiseResume3Ui s3://vincentbloise.com --recursive --acl public-read
aws s3 cp ./dist/vbloiseResume3Ui s3://www.vincentbloise.com --recursive --acl public-read
aws s3 cp ./dist/vbloiseResume3Ui s3://vincebloise.com --recursive --acl public-read
