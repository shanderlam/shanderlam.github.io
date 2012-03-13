---
layout: post
title: !binary |-
  QXV0b21hdGljYWxseSBjaGFuZ2UgdGFncyB0YWJsZSBsaXN0IGJhc2Ugb24g
  Y3VycmVudCBmaWxl
wordpress_id: 381
wordpress_url: !binary |-
  aHR0cDovL2Jsb2cuc2hhbmRlcmxhbS5jb20vP3A9Mzgx
date: 2011-04-10 22:27:33.000000000 +08:00
---
<p>
If you want to change tags table list automatically base on current file in Emacs, you can use the <a href="http://www.emacswiki.org/emacs/EtagsTable">Etags Table</a> extension. 
</p>
<p>
Firstly, download <a href="http://www.emacswiki.org/emacs/download/etags-table.el">etags-table.el</a> file, and put it to your Emacs `load-path'.
</p>
<p>
Then, make some change in your init file. If you want the EtagsTable automatically search tags file for you, put below code in your init file.
</p>
<pre>
(require 'etags-table)
(setq etags-table-search-up-depth 10)
</pre>
<p>
With the code above, Emacs will search the file path upwards for a tags file. If one is found, it will be added to the tags table list. The value <em>10</em> of `etags-table-search-up-depth' indicate the max depth to search up for a tags file is 10. If this variable is nill, means don's search.
</p>
<p>
If you want to set tags table list for specified project. You can put below code in your init file.
</p>
<pre>
(require 'etags-table)
(setq etags-table-alist
      (list
       '("/home/devel/proj1/.*" "/home/devel/proj1/TAGS" "/home/devel/common/TAGS")
       ))
</pre>
<p>
The variable `etags-table-alist' maps filename to tag file(s). The first element of the list is used to compared with current file, if it matches, all the rest of the list elements are put on `tags-table-list’. That means with the code above, if you work on a file named /home/devel/proj1/main.c, `tags-table-list' will be set to a list of:
<ul>
<li>/home/devel/proj1/TAGS</li>
<li>/home/devel/common/TAGS</li>
</ul>
</p>
