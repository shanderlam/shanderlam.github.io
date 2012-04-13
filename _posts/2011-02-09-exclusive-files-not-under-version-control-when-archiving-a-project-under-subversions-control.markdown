---
layout: post
title: Exclusive Files Not Under Version Control When Archiving a Project Under Subversion's Control
category: System Administrator
tags: [svn]
date: 2011-02-09 11:35:23.000000000 +08:00
---
If you want to exclude the files not under version control when archiving a project under subversion's control, you can first export the project from subversion, then archive the project.

1. Use *svn export* command for exporting the project.
2. Use zip for archive the project just exported.


