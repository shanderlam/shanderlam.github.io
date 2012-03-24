---
layout: post
title: Suggest a Default Filename If the User Requests that the Content is Saved to a File
category: Web Development
tags: [http]
date: 2011-04-11 23:51:42.000000000 +08:00
---
Sometimes, you let user to download a file that is created on the fly, and you want this file has a proper filename. In this scenario, you can use the [*Content-Disposition*](http://www.w3.org/Protocols/rfc2616/rfc2616-sec19.html#sec19.5.1) http response header which is suggest a default filename for web browser. Below is a definition for Content-Disposition.

    content-disposition = "Content-Disposition" ":"
                          disposition-type *( ";" disposition-parm )
    disposition-type = "attachment" | disp-extension-token
    disposition-parm = filename-parm | disp-extension-parm
    filename-parm = "filename" "=" quoted-string
    disp-extension-token = token
    disp-extension-parm = token "=" ( token | quoted-string )

An example is

    Content-Disposition: attachment; filename="fname.ext"

Above code suggest web browser to save file as the filename *fname.ext*.
