#!/bin/bash
set -o nounset
set -o errexit

CWD=$PWD
mkdir -p $CWD/build

IPERF_VERSION="2.0.4"
IPERF_FILE=iperf-$IPERF_VERSION-source.tar.gz

cd $CWD/build

if [ ! -f "$IPERF_FILE" ]; then
    wget https://iperf.fr/download/source/$IPERF_FILE
fi

tar xf $IPERF_FILE

cp $CWD/patch/iperf-int.h     iperf-$IPERF_VERSION/include/
cp $CWD/patch/ReportDefault.c iperf-$IPERF_VERSION/src/
cp $CWD/patch/Reporter.c      iperf-$IPERF_VERSION/src/
cp $CWD/patch/Settings.cpp    iperf-$IPERF_VERSION/src/
cp $CWD/patch/Thread.c        iperf-$IPERF_VERSION/compat/
cp $CWD/patch/config.h        iperf-$IPERF_VERSION/
cp $CWD/Android.mk            iperf-$IPERF_VERSION/
cp $CWD/Application.mk        iperf-$IPERF_VERSION/

mv iperf-$IPERF_VERSION jni

cd jni && ndk-build
