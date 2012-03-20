---
layout: post
title: Get a plain text file of man page
date: 2011-04-23 14:15:06.000000000 +08:00
---

If you generate plain text file of man page use the command below, you will get lots of backspaces and duplicate charaters in the text.

    man foo > foo.txt

If you want to avoid these charaters, you can use the command below:

    man foo | col -b > foo.txt

The *col* command with option *-b* filter all the backspaces, printing only the last character written to each column position.
