#!/bin/bash
IPERF_VERSION="2.0.4"
IPERF_FILE=iperf-$IPERF_VERSION-source.tar.gz

if [ ! -f "$IPERF_FILE" ]; then
    wget https://iperf.fr/download/source/$IPERF_FILE
fi

tar xf $IPERF_FILE

if [ -d jni ]; then
    rm -rf jni
fi
if [ -d libs ]; then
    rm -rf libs
fi
if [ -d obj ]; then
    rm -rf obj
fi

mv iperf-$IPERF_VERSION jni
cp patch/iperf-int.h jni/include/
cp patch/ReportDefault.c jni/src/
cp patch/Reporter.c jni/src/
cp patch/Settings.cpp jni/src/
cp patch/Thread.c jni/compat/
cp patch/config.h jni/
cp Android.mk jni/
cp Application.mk jni/
ndk-build -C jni