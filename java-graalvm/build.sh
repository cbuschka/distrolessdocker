#!/bin/bash

trap "exit 1" SIGINT
trap "exit 1" SIGTERM
trap "exit 1" SIGHUP

WORK_DIR=$(cd `dirname 0` && pwd)

rm -rf $WORK_DIR/build && mkdir -p $WORK_DIR/build/classes
cd $WORK_DIR/src
javac -d $WORK_DIR/build/classes/ $(find . -name '*.java')
cd $WORK_DIR/build/classes
mkdir -p $WORK_DIR/build/classes
cat - >$WORK_DIR/build/manifest.mf <<EOB
Main-Class: hello.Main
EOB
jar cvfm $WORK_DIR/build/hello.jar $WORK_DIR/build/manifest.mf .
jar tvf $WORK_DIR/build/hello.jar
cd $WORK_DIR/build
native-image --enable-url-protocols=http \
                      -Djava.net.preferIPv4Stack=true --static \
                      -H:+ReportUnsupportedElementsAtRuntime --no-server -jar $WORK_DIR/build/hello.jar
