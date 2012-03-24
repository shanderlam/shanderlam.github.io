---
layout: post
title: Make Change of Emacs Init File Taked Effect Immediately Without Restart
category: Text Editor
tags: [emacs]
date: 2011-04-10 20:43:28.000000000 +08:00
---
If you want to make changes of init file(usually *~/.emacs*) taked effect immediately without restart Emacs, you can use the command <var>eval-buffer</var> in the init file buffer, then the whole init file will be evaluated,  and after evaluated the change will take effect.

Note: This is just evaluating the file, so it may not remove some settings before. 
e.g. You add some value to a list already, then you remove the corespondent code and evaluate the buffer. The value you add will not removed.
