cd /home/dev
wget https://iperf.fr/download/source/iperf-3.1.3-source.tar.gz
tar xf iperf-3.1.3-source.tar.gz
mv iperf-3.1.3 jni
cp /home/out/patch/* jni/src/
cp /home/out/Android.mk jni/
cp /home/out/Application.mk jni/
cd jni && ndk-build && cd ..

if [ -f "libs/arm64-v8a/iperf" ];then
    sudo cp libs/arm64-v8a/iperf /home/out/bin/iperf
else
    exit 1
fi

# clean
rm -rf iperf-3.1.3-source.tar.gz
rm -rf jni
rm -rf libs
rm -rf obj