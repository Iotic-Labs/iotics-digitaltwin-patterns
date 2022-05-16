#!/bin/bash

GIT=/usr/bin/git
PATH=$(dirname "$0")
/bin/sed -i "s/:revnumber: .*/:revnumber: $1/g" $PATH/../index.adoc
$GIT add $PATH/../index.adoc
$GIT commit -m"changed revision to $1"
$GIT push
$GIT tag $1 -m"tagging with $1"
$GIT push origin $1
