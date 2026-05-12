#!/bin/sh

aws --profile steve s3 sync . s3://liveatthefair.com --exclude "ricks_machine/*"
