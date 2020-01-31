#!/bin/bash

hugo
sleep 2
rm -rf ../minim-www/*
mv public/{*,.[^.]*} ../minim-www
cd ../minim-www
git add .
git commit -m "deploy for $(date +%Y%m%d)"
git push origin master
cd ../minim
rm -rf public