#!/bin/bash

hugo
sleep 2
aws s3 sync ./public s3://minim-www
rm -rf ./public