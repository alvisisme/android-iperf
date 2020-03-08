#!/bin/bash
set -o nounset
set -o errexit

CWD=$PWD
mkdir -p $CWD/build

IPERF_VERSION="3.1.3"
IPERF_FILE=iperf-$IPERF_VERSION-source.tar.gz

cd $CWD/build

if [ ! -f "$IPERF_FILE" ]; then
    wget https://iperf.fr/download/source/$IPERF_FILE
fi

tar xf $IPERF_FILE

cp $CWD/patch/*         iperf-$IPERF_VERSION/src/
cp $CWD/Android.mk      iperf-$IPERF_VERSION/
cp $CWD/Application.mk  iperf-$IPERF_VERSION/

mv iperf-$IPERF_VERSION jni

ndk-build -C jni
