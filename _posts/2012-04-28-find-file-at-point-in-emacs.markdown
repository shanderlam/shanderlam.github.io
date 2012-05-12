---
layout: post
title: Find File At Point In Emacs
category: Text Editor
tags: [emacs]
date: 2012-04-28 07:17:00.000000000 +08:00
---
Sometimes there are file path in the documents, and you may want to open the
file located by the path. If you visit the document in Emacs, fortunately you
have a very convenient way to do this. In Emacs, there is a function named
*find-file-at-point*, it can help you open the file according by the text
around current point.

The only things you do is move the cursor to the point of the file path, then
type <kbd>M-x find-file-at-point</kbd> for invoking the function. Then Emacs
will prompt you the file path, you can modify it, or directly type
<kbd>RET</kbd> to open the file.
