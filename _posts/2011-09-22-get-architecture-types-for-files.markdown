---
layout: post
title: Get Architecture Types for Files
category: System Administrator
tags: [osx]
date: 2011-09-22 20:44:59.000000000 +08:00
---
In Mac OS X, if you want to get architecture types for a specific file, you can
use the <kbd>lipo</kbd> command. In terminal, type command below:

    lipo -info FILE_NAME

<p><var>info</var> options let <kbd>lipo</kbd> just list the architecture types
of the given file, in this case is <var>FILE_NAME</var>. The output from
terminal will be something like below:</p>

<samp>Architectures in the fat file: gnutls-cli are: i386 x86_64</samp>

