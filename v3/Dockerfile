# See https://github.com/alvisisme/docker-android-ndk
FROM alvisisme/android-ndk:r13b

COPY build.sh /build.sh
COPY patch /patch
COPY Android.mk /Android.mk
COPY Application.mk /Application.mk

CMD ["/bin/bash", "/build.sh"]
