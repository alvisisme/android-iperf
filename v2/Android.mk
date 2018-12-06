LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := iperf
LOCAL_SRC_FILES := \
	src/SocketAddr.c \
	src/service.c \
	src/gnu_getopt_long.c \
	src/sockets.c \
	src/gnu_getopt.c \
	src/ReportCSV.c \
	src/ReportDefault.c \
	src/Locale.c \
	src/Extractor.c \
	src/Reporter.c \
	src/stdio.c \
	src/tcp_window_size.c \
	src/main.cpp \
	src/List.cpp \
	src/Listener.cpp \
	src/PerfSocket.cpp \
	src/Launch.cpp \
	src/Client.cpp \
	src/Server.cpp \
	src/Settings.cpp \
	compat/string.c \
	compat/inet_ntop.c \
	compat/error.c \
	compat/gettimeofday.c \
	compat/snprintf.c \
	compat/inet_pton.c \
	compat/Thread.c \
	compat/signal.c \
	compat/delay.cpp

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/include \
	$(LOCAL_PATH)/src \
	$(LOCAL_PATH)/compat

LOCAL_CFLAGS := -DHAVE_CONFIG_H
include $(BUILD_EXECUTABLE)