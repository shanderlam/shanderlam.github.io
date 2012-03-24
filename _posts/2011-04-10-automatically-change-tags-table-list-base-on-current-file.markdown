---
layout: post
title: Automatically Change Tags Table List Base on Current File
category: Text Editor
tags: [emacs]
date: 2011-04-10 22:27:33.000000000 +08:00
---
If you want to change tags table list automatically base on current file in Emacs, you can use the [Etags Table](http://www.emacswiki.org/emacs/EtagsTable) extension. 

Firstly, download [etags-table.el](http://www.emacswiki.org/emacs/download/etags-table.el) file, and put it to your Emacs <var>load-path</var>.

Then, make some change in your init file. If you want the EtagsTable automatically search tags file for you, put below code in your init file.

    (require 'etags-table)
    (setq etags-table-search-up-depth 10)

With the code above, Emacs will search the file path upwards for a tags file. If one is found, it will be added to the tags table list. The value *10* of <var>etags-table-search-up-depth</var> indicate the max depth to search up for a tags file is 10. If this variable is *nil*, means don's search.

If you want to set tags table list for specified project. You can put below code in your init file.

    (require 'etags-table)
    (setq etags-table-alist
          (list
           '("/home/devel/proj1/.*" "/home/devel/proj1/TAGS" "/home/devel/common/TAGS")
           ))

The variable <var>etags-table-alist</var> maps filename to tag file(s). The first element of the list is used to compared with current file, if it matches, all the rest of the list elements are put on <var>tags-table-list</var>. That means with the code above, if you work on a file named /home/devel/proj1/main.c, <var>tags-table-list</var> will be set to a list of:

* /home/devel/proj1/TAGS
* /home/devel/common/TAGS
