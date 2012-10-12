---
layout: post
title: Switch Between Installed Version of Formula
category: System Administrator
tags: [homebrew]
date: 2011-11-08 00:58:41.000000000 +08:00
---
In [HomeBrew](http://mxcl.github.com/homebrew/), there is an external command
for switching between installed versions of formula.  Below is the description
of this command.

`switch <formula> <version>`
:   Switch between installed versions of <var>&lt;formula&gt;</var>.  If you
have multiple versions of a formula installed, the standard brew link command
will fail.  switch tries to unlink all versions from <var>HOMEBREW_PREFIX</var>,
then \[re\]links the requested version.

With this command, you can switch installed versions of formula by typing
`brew switch <formula> <version>` in command line.  For example, the code below
let you switch to version 0.4.12 of node.

     $ brew switch node 0.4.12
