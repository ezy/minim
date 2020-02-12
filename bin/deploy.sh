#!/bin/bash

hugo
sleep 2
aws s3 sync ./public s3://www.minim.nz
rm -rf ./public