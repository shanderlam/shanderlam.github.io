---
layout: post
title: !binary |-
  U3VnZ2VzdCBhIGRlZmF1bHQgZmlsZW5hbWUgaWYgdGhlIHVzZXIgcmVxdWVz
  dHMgdGhhdCB0aGUgY29udGVudCBpcyBzYXZlZCB0byBhIGZpbGU=
wordpress_id: 432
wordpress_url: !binary |-
  aHR0cDovL2Jsb2cuc2hhbmRlcmxhbS5jb20vP3A9NDMy
date: 2011-04-11 23:51:42.000000000 +08:00
---
<p>
Sometimes, you let user to download a file that is created on the fly, and you want this file has a proper filename.  In this scenario, you can use the <a href="http://www.w3.org/Protocols/rfc2616/rfc2616-sec19.html#sec19.5.1">Content-Disposition</a> http response header which is suggest a default filename for web browser. Below is a definition for Content-Disposition.
</p>
<pre>
        content-disposition = "Content-Disposition" ":"
                              disposition-type *( ";" disposition-parm )
        disposition-type = "attachment" | disp-extension-token
        disposition-parm = filename-parm | disp-extension-parm
        filename-parm = "filename" "=" quoted-string
        disp-extension-token = token
        disp-extension-parm = token "=" ( token | quoted-string )
</pre>
<p>An example is</p>
<pre>
        Content-Disposition: attachment; filename="fname.ext"
</pre>
Above code suggest web browser to save file as the filename <em>fname.ext</em>.
