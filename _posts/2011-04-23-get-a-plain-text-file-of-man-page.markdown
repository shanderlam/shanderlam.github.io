---
layout: post
title: !binary |-
  R2V0IGEgcGxhaW4gdGV4dCBmaWxlIG9mIG1hbiBwYWdl
wordpress_id: 464
wordpress_url: !binary |-
  aHR0cDovL2Jsb2cuc2hhbmRlcmxhbS5jb20vP3A9NDY0
date: 2011-04-23 14:15:06.000000000 +08:00
---
<p>
If you generate plain text file of man page use the command below, you will get lots of backspaces and duplicate charaters in the text.
<pre>
man foo > foo.txt
</pre>
</p>
<p>If you want to avoid these charaters, you can use the command below:
<pre>
man foo | col -b > foo.txt
</pre>
</p>
<p>
The <strong>col</strong> command with option <var>-b</var> filter all the backspaces, printing only the last character written to each column position.
</p>
