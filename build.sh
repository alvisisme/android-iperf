cd /home/out
wget https://iperf.fr/download/source/iperf-3.1.3-source.tar.gz
tar xf iperf-3.1.3-source.tar.gz
mv iperf-3.1.3 jni
cp patch/* jni/src/
cp Android.mk jni/
cp Application.mk jni/
cd jni && ndk-build && cd ..

if [ -f "libs/arm64-v8a/iperf" ]
    cp libs/arm64-v8a/iperf bin/iperf
else
    exit(1)
fi



# clean
rm -rf iperf-3.1.3-source.tar.gz
rm -rf jni
rm -rf libs
rm -rf obj