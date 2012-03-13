---
layout: post
title: !binary |-
  R2V0IGFyY2hpdGVjdHVyZSB0eXBlcyBmb3IgZmlsZXM=
wordpress_id: 495
wordpress_url: !binary |-
  aHR0cDovL2Jsb2cuc2hhbmRlcmxhbS5jb20vP3A9NDk1
date: 2011-09-22 20:44:59.000000000 +08:00
---
<p>
In Mac OS X, if you want to get architecture types for a specific file, you can use the <kbd>lipo</kbd> command. In terminal, type command below:
<code>
lipo -info <var>FILE_NAME</var>
</code>
<var>info</var> options let <kbd>lipo</kbd> just list the architecture types of the given file, in this case is <var>FILE_NAME</var>. The output from terminal will be something like below:
<samp>
Architectures in the fat file: gnutls-cli are: i386 x86_64
</samp>
</p>
