#!/bin/bash

source common/functions.sh

OSX=$(test "`uname`" == "Darwin" && echo "x")

sh brew/global.sh

sh ruby/global.sh

sh softwares/global.sh

sh configurations/global.sh