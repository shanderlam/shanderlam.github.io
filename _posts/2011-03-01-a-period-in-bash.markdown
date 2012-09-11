---
layout: post
title: A Period in Bash
category: System Administrator
tags: [bash]
date: 2011-03-01 16:55:51.000000000 +08:00
---
Below is description of *.* in bash manual.

*.* (a period)
: . filename \[arguments\]

Read and execute commands from the *filename* argument in the current shell
context.  If *filename* does not contain a slash, the *PATH* variable is used to
find *filename*.  When Bash is not in posix mode, the current directory is
searched if *filename* is not found in *$PATH*.  If any *arguments* are
supplied, they become the positional parameters when *filename* is executed.
Otherwise the positional parameters are unchanged.  The return status is the
exit status of the last command executed, or zero if no commands are executed.
If *filename* is not found, or cannot be read, the return status is
non-zero. This builtin is equivalent to *source*.

If you modify the *.bachrc* file, you can use below shell command make it
effective.

    . ~/.bashrc
