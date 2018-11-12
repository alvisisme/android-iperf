FROM alvisisme/docker-android-ndk:r13b

VOLUME ["/home/out"]
CMD ["/bin/sh", "/home/out/build.sh"]

  
