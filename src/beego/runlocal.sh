#!/usr/bin/env bash
thisDir=`echo $(cd $(dirname $0);pwd)`
moveTarget=`(echo $GOPATH/src/ | sed 's,//,/,g')`
cd $moveTarget
rm beego
ln -s $thisDir beego
cd $thisDir
bee run beego