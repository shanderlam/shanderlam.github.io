---
layout: post
title: Load a Custom ROM on Motorola Milestone
tags: [milestone]
date: 2010-04-06 11:38:22.000000000 +08:00
---
### 准备工作


1. [下载](http://and-developers.com/tools:rsd_lite)RSDLite刷机软件。
2. [下载](http://and-developers.com/sbf)一个<acronym title="Single Binary File">SBF</acronym>，SBF是可以通过RSDLite刷到MileStone上二进制文件。


### 开始刷机

#### 1. 将MileStone设置成BootLoader模式

设置方法为关闭主机电源，同时按住开机键和向上的导航键。

#### 2. 将MileStone通过USB连接电脑，并打开RSDLite

这时应该能够在RSDLite的列表上看到机器信息。这里需要注意，在Windows Vista和Windows 7的<acronym title="User Account Control">UAC</acronym>模式下须选择Run as Administrator。

#### 3. 选择SBF，开始刷机

选择SBF文件，点击Start开始刷机，顺利的话几分钟后就可以进入开机画面，刷机成功。

更新：你可能需要下载[USB 驱动](http://www.motorola.com/consumers/v/index.jsp?vgnextoid=ceb1cc6e48970210VgnVCM1000008406b00aRCRD)

