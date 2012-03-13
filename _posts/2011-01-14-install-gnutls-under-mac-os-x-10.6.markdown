---
layout: post
title: !binary |-
  5ZyoTWFjIE9TIFggMTAuNuS4i+WuieijhUdudVRMUw==
wordpress_id: 266
wordpress_url: !binary |-
  aHR0cDovL2Jsb2cuc2hhbmRlcmxhbS5jb20vP3A9MjY2
date: 2011-01-14 03:41:20.000000000 +08:00
---
<p>
<h4>安装环境：</h4> 
<ul>
<li>Mac OS X: 10.6.6</li>
<li>Xcode: 3.2.5</li>
<li>GnuTLS: 2.10.4</li>
<li>Libgcrypt: 1.4.6</li>
<li>Libgpg-error: 1.10</li>
</ul>
</p>
<p>
要成功编译GnuTLS必须先安装Libgcrypt，而要成功编译Libgcrypt又必须依赖Libgpg-error。所以必须按照Libgpg-error->Libgcrypt->GnuTLS的顺序进行安装。具体安装方法见各程序的INSTALL文档，以下是在安装过程中出现的问题以及解决方法。
</p>
<p>
<h4>对Libgcrypt进行make时会出现以下错误：</h4>
<pre>
mpih-add1-asm.S:47:suffix or operands invalid for `push'
mpih-add1-asm.S:48:suffix or operands invalid for `push'
mpih-add1-asm.S:78:suffix or operands invalid for `jmp'
mpih-add1-asm.S:113:suffix or operands invalid for `pop'
mpih-add1-asm.S:114:suffix or operands invalid for `pop'
</pre>
这个错误可通过在configure时增加可选项<var>disable-asm</var>来避免。
<pre>
./configure --disable-asm
</pre>
</p>
<p>
<h4>对GnuTLS进行make时会出现以下错误：</h4>
<pre>
serv.c:515:41: error: macro "__darwin_obsz" passed 2 arguments, but takes just 1
serv.c: In function 'peer_print_info':
serv.c:515: error: '__darwin_obsz' undeclared (first use in this function)
serv.c:515: error: (Each undeclared identifier is reported only once
serv.c:515: error: for each function it appears in.)
serv.c:515: error: expected expression before ')' token
serv.c:515: warning: passing argument 3 of '__builtin___snprintf_chk' makes integer from pointer without a cast
serv.c:517:37: error: macro "__darwin_obsz" passed 2 arguments, but takes just 1
serv.c:517: warning: passing argument 3 of '__builtin___snprintf_chk' makes integer from pointer without a cast
serv.c:518:31: error: macro "__darwin_obsz" passed 2 arguments, but takes just 1
serv.c:518: error: expected expression before ')' token
serv.c:518: warning: passing argument 3 of '__builtin___snprintf_chk' makes integer from pointer without a cast
serv.c:521:71: error: macro "__darwin_obsz" passed 2 arguments, but takes just 1
serv.c:519: error: expected expression before ')' token
serv.c:519: warning: passing argument 3 of '__builtin___snprintf_chk' makes integer from pointer without a cast
serv.c:533:51: error: macro "__darwin_obsz" passed 2 arguments, but takes just 1
serv.c:533: warning: passing argument 3 of '__builtin___snprintf_chk' makes integer from pointer without a cast
serv.c:545:49: error: macro "__darwin_obsz" passed 2 arguments, but takes just 1
serv.c:544: warning: passing argument 3 of '__builtin___snprintf_chk' makes integer from pointer without a cast
serv.c:553:49: error: macro "__darwin_obsz" passed 2 arguments, but takes just 1
serv.c:552: warning: passing argument 3 of '__builtin___snprintf_chk' makes integer from pointer without a cast
serv.c:562:43: error: macro "__darwin_obsz" passed 2 arguments, but takes just 1
serv.c:560: warning: passing argument 3 of '__builtin___snprintf_chk' makes integer from pointer without a cast
serv.c:570:43: error: macro "__darwin_obsz" passed 2 arguments, but takes just 1
serv.c:568: warning: passing argument 3 of '__builtin___snprintf_chk' makes integer from pointer without a cast
serv.c:581:8: error: macro "__darwin_obsz" passed 2 arguments, but takes just 1
serv.c:579: warning: passing argument 3 of '__builtin___snprintf_chk' makes integer from pointer without a cast
serv.c:590:78: error: macro "__darwin_obsz" passed 2 arguments, but takes just 1
serv.c:590: warning: passing argument 3 of '__builtin___snprintf_chk' makes integer from pointer without a cast
serv.c:596:70: error: macro "__darwin_obsz" passed 2 arguments, but takes just 1
serv.c:596: warning: passing argument 3 of '__builtin___snprintf_chk' makes integer from pointer without a cast
serv.c:601:68: error: macro "__darwin_obsz" passed 2 arguments, but takes just 1
serv.c:601: warning: passing argument 3 of '__builtin___snprintf_chk' makes integer from pointer without a cast
serv.c:606:63: error: macro "__darwin_obsz" passed 2 arguments, but takes just 1
serv.c:606: warning: passing argument 3 of '__builtin___snprintf_chk' makes integer from pointer without a cast
serv.c:611:60: error: macro "__darwin_obsz" passed 2 arguments, but takes just 1
serv.c:611: warning: passing argument 3 of '__builtin___snprintf_chk' makes integer from pointer without a cast
serv.c:619:8: error: macro "__darwin_obsz" passed 2 arguments, but takes just 1
serv.c:618: warning: passing argument 3 of '__builtin___snprintf_chk' makes integer from pointer without a cast
serv.c:623:54: error: macro "__darwin_obsz" passed 2 arguments, but takes just 1
serv.c:623: warning: passing argument 3 of '__builtin___snprintf_chk' makes integer from pointer without a cast
serv.c:627:84: error: macro "__darwin_obsz" passed 2 arguments, but takes just 1
serv.c:627: warning: passing argument 3 of '__builtin___snprintf_chk' makes integer from pointer without a cast
</pre>
这个错误是由于宏snprintf在Mac OS X 10.6下的不兼容造成的。解决方法是修改serv.c中的代码，将宏tmp2拆成两个宏。具体修改如下:
<ol>
<li>先将tmp2的定义拆分为tmp2b和tmp2l。</li>
<pre>
-#define tmp2 &http_buffer[strlen(http_buffer)], len-strlen(http_buffer)
+#define tmp2b &http_buffer[strlen(http_buffer)]
+#define tmp2l len-strlen(http_buffer)
</pre>
<li>接着将所有调用tmp2的地方替换为tmp2b, tmp2l。</li>
</ol>
参考文章：<a href="http://permalink.gmane.org/gmane.comp.encryption.gpg.gnutls.devel/4825">GnuTLS does not build on OS X 10.6 due to incompatibility with snprintf macro</a>
</p>
<p>
以下是原文中关于错误及解决方法的描述：
<cite>
Code built with gcc on Mac OS X 10.6 uses the object size checking feature of gcc by default. This involves redefining
several functions as macros; one of these functions is snprintf:

	#define snprintf(str, len, ...) \
 	 __builtin___snprintf_chk (str, len, 0, __darwin_obsz(str), __VA_ARGS__)

The usage of snprintf in src/serv.c in gnutls-2.10.4 is not compatible with that macro. serv.c attempts to
use a macro (tmp2) that expands into two different arguments:

	#define tmp2 &http_buffer[strlen(http_buffer)], len-strlen(http_buffer)

	snprintf (tmp2, "%.2X", sesid[i]);

Due to how nested macro evaluation works, the snprintf macro sees tmp2 as a single argument, and copies it
into __darwin_obsz(); then, when tmp2 is expanded, __darwin_obsz has two arguments, but it is only
defined for one, and the result is a compilation error.

One way to work around this issue might be to define _FORTIFY_SOURCE=0 so that the snprintf macro is not
defined, or simply doing an #undef snprintf for that file, but it seems safer and more portable to split
tmp2 into two macros. I append a patch that does so.
</cite>
</p>
