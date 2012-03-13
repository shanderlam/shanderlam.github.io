---
layout: post
title: !binary |-
  QSBQZXJpb2QgaW4gQmFzaA==
wordpress_id: 321
wordpress_url: !binary |-
  aHR0cDovL2Jsb2cuc2hhbmRlcmxhbS5jb20vP3A9MzIx
date: 2011-03-01 16:55:51.000000000 +08:00
---
<p>
Below is description of <code>. </code> in bash manual.
</p>
<dt><code>.    </code>(a period)</dt>
<dd>
     <pre class="example">          
      . <var>filename</var> [<var>arguments</var>]
     </pre> 
     <p>
      Read and execute commands from the <var>filename</var> argument in the current shell context.  If <var>filename</var> does not contain a slash, the <samp>PATH</samp> variable is used to find <var>filename</var>.  When Bash is not in posix mode, the current directory is searched if <var>filename</var> is not found in <samp>$PATH</samp>.  If any <var>arguments</var> are supplied, they become the positional parameters when <var>filename</var> is executed.  Otherwise the positional parameters are unchanged.  The return status is the exit status of the last command executed, or zero if no commands are executed.  If <var>filename</var> is not found, or cannot be read, the return status is non-zero. This builtin is equivalent to <code>source</code>.
      </p>
</dd>
<p>
If you modify the .bachrc file, you can use below shell command make it effective.
<pre>
        . <var>~/.bashrc</var>
</pre>
</p>
