---
layout: post
title: Use vc-annotate For Finding Modification History Of Specific Line
category: Text Editor
tags: [emacs, vc-annotate]
date: 2012-05-12 04:30:00.000000000 +08:00
---
[vc-annotate]: /images/vc-annotate.png

Usually I work on projects under version control system such as
[*git*](http://git-scm.com/). Sometimes, I want to find the modification
history of specific line to understand what the content is before this
revision. In this situation, *vc-annotate* can help me.

*vc-annotate* is an extension of *Emacs* displaying an annotated version of the
file under version control for you. And it also provide you many useful
commands for interacting with file history. To use it, open the file you want
to interacted with in Emacs, then type <kbd>M-x vc-annotate</kbd> or
<kbd>C-x v g</kbd>. Emacs will show you a new buffer for each line of the
current file, when it was last edited and by whom. Below is the screenshot for
vc-annotate.

![vc-annotate][vc-annotate]

In this screenshot, you can see last modification commit SHA-1 name, author,
time and line number for each line from left to right. Move the cursor to the
line you interested, then type <kbd>d</kbd>, Emacs with invoke
*vc-annotate-show-diff-revision-at-line* command that show you the diff of the
revision at line from its previous revision. So you can find content of this
line before last modification.

But sometimes, last modification may not you want to find. For
example, the last modification just deleted the trailing white space of this
line which you don't interested. So you want to find the earlier modification.
*vc-annotate* also support you to do this. Move cursor to the line you
interested. Then type <kbd>a</kbd>, Emacs will invoke
*vc-annotate-revision-previous-to-line* command that visit the annotation of
the revision before the revision at line. Thus you can use this function
recursively util you find the revision you want.

*vc-annotate* also provide many other useful commands for you, to understand
more *vc-annotate* command, in the annotate buffer, type <kbd>C-h m</kbd>,
Emacs will show you basic help of Annotate mode.
