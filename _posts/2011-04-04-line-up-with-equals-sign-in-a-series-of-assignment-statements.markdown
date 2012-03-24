---
layout: post
title: Line Up with Equals Sign in a Series of Assignment Statements
category: Text Editor
tags: [emacs]
date: 2011-04-04 18:56:53.000000000 +08:00
---
If you want to line up with equals sign in a series of assignment statements in emacs, you can use the align-regexp comment. In the minibuffer, type <kbd>Mx align-regexp RET = RET</kbd>. Below is a example.

Before:

    $a = 1;
    $ab = 2;
    $abc = 3;

After:

    $a   = 1;
    $ab  = 2;
    $abc = 3;
