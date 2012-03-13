---
layout: post
title: !binary |-
  RW1hY3MgVGlwczogTWFrZSBjaGFuZ2VzIG9mIGluaXQgZmlsZSB0YWtlZCBl
  ZmZlY3QgaW1tZWRpYXRlbHkgd2l0aG91dCByZXN0YXJ0
wordpress_id: 372
wordpress_url: !binary |-
  aHR0cDovL2Jsb2cuc2hhbmRlcmxhbS5jb20vP3A9Mzcy
date: 2011-04-10 20:43:28.000000000 +08:00
---
<p>
If you want to make changes of init file(usually <em>~/.emacs</em>) taked effect immediately without restart Emacs, you can use the command <var>eval-buffer</var> in the init file buffer, then the whole init file will be evaluated,  and after evaluated the change will take effect.
</p>
<p>
Note: This is just evaluating the file, so it may not remove some settings before. 
e.g. You add some value to a list already, then you remove the corespondent code and evaluate the buffer. The value you add will not removed.
</p>
