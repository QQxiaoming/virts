[![CI](https://github.com/QQxiaoming/virts/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/QQxiaoming/virts/actions/workflows/ci.yml)
[![CodeFactor](https://www.codefactor.io/repository/github/qqxiaoming/virts/badge)](https://www.codefactor.io/repository/github/qqxiaoming/virts)
[![License](https://img.shields.io/github/license/qqxiaoming/virts.svg?colorB=f48041&style=flat-square)](https://github.com/QQxiaoming/virts)

# virts

English | [简体中文](./README_zh_CN.md)

## Introduction

This is a software-simulated serial port ttyVIRT device driver. After loading the driver, two devices, /dev/ttyVIRT0 and /dev/ttyVIRT1, will be generated. Different applications can open these two serial devices to communicate with each other.

## Install

```shell
make
make load
```

## Uninstall

```shell
make unload
```
