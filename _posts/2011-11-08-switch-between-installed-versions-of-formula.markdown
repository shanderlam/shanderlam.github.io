---
layout: post
title: !binary |-
  U3dpdGNoIGJldHdlZW4gaW5zdGFsbGVkIHZlcnNpb25zIG9mIGZvcm11bGE=
wordpress_id: 501
wordpress_url: !binary |-
  aHR0cDovL2Jsb2cuc2hhbmRlcmxhbS5jb20vP3A9NTAx
date: 2011-11-08 00:58:41.000000000 +08:00
---
<p>
In <a href="http://mxcl.github.com/homebrew/">HomeBrew</a>, there is an external command for switching between installed versions of formula. Below is the description of this command.
</p>
<dl>
<dt>switch &lt;formula&gt; &lt;version&gt;</dt>
<dd>
Switch between installed versions of &lt;formula&gt;. If you have multiple versions of a formula installed, the standard brew link command will fail. switch tries to unlink all versions from HOMEBREW_PREFIX, then [re]links the requested version.
</dd>
</dl>
<p>
With this command, you can switch installed versions of formula by typing <code>brew switch &lt;formula&gt; &lt;version&gt;</code> in command line. For example, the code below let you switch to version 0.4.12 of node.
<pre>
$ brew switch node 0.4.12
</pre>
</p>
