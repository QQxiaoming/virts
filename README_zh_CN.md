[![CI](https://github.com/QQxiaoming/virts/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/QQxiaoming/virts/actions/workflows/ci.yml)
[![CodeFactor](https://www.codefactor.io/repository/github/qqxiaoming/virts/badge)](https://www.codefactor.io/repository/github/qqxiaoming/virts)
[![License](https://img.shields.io/github/license/qqxiaoming/virts.svg?colorB=f48041&style=flat-square)](https://github.com/QQxiaoming/virts)

# virts

[English](./README.md) | 简体中文

## 介绍

这是一个软件模拟的串口ttyVIRT设备驱动，加载驱动后，会产生/dev/ttyVIRT0和/dev/ttyVIRT1两个设备，不同的应用程序分别打开这两个串口设备可以互相通信。

## 安装

```shell
make
make load
```

## 卸载

```shell
make unload
```
