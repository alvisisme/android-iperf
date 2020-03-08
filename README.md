# iperf-for-android

[![Build Status](https://img.shields.io/travis/com/alvisisme/android-iperf?style=flat-square)](https://travis-ci.com/alvisisme/android-iperf)

编译iperf至android平台arm64-v8a架构。

本工程主要编译可执行文件。

## 目录

- [背景](#背景)
- [安装](#安装)
- [用法](#用法)
- [维护人员](#维护人员)
- [贡献参与](#贡献参与)
- [许可](#许可)

## 背景

编译环境

* Ubuntu 18.04.4 LTS amd64
* android-ndk-r13b
* iperf-2.0.4
* iperf-3.1.3

## 安装

将**dist**目录下对应文件导入安卓手机。

```bash
adb push dist/iperf2 /data/local/tmp
adb shell chmod 755 /data/local/tmp/iperf2
```

## 用法

推荐使用 docker 和 docker-compose 进行编译

编译 iperf v2

```bash
cd v2
docker-compose up --build
```

编译 iperf v3

```bash
cd v3
docker-compose up --build
```

编译后文件位于对应版本目录的 **build/libs** 目录下。

## 维护人员

[@Alvis Zhao](https://github.com/alvisisme)

## 贡献参与

欢迎提交PR。

## 许可

© 2020 Alvis Zhao
