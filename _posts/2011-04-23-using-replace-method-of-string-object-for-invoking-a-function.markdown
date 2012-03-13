---
layout: post
title: !binary |-
  VXNpbmcgcmVwbGFjZSBtZXRob2Qgb2YgU3RyaW5nIE9iamVjdCBmb3IgaW52
  b2tpbmcgYSBmdW5jdGlvbg==
wordpress_id: 472
wordpress_url: !binary |-
  aHR0cDovL2Jsb2cuc2hhbmRlcmxhbS5jb20vP3A9NDcy
date: 2011-04-23 20:33:50.000000000 +08:00
---
<p>
In JavaScript, <strong>String</strong> Object has a <strong>replace</strong> method, if the second parameter given to the method is a function, this function will be invoke after match peformed. The function's result (return value) will be used as the replacement string.  Note that the function will be invoked multiple times for each full match to be replaced if the regular expression in the first parameter is global.
</p>
<p>
The arguments to the function are as follows:
</p>
<table> 
<tr>
<th>Possible name</th>
<th>Supplied value</th>
</tr> 
<tr>
<td><code>str</code></td>
<td>The matched substring. (Corresponds to $&amp; above.)</td>
</tr>
<tr>
<td><code>p1, p2, ...</code></td>
<td>
The <em>n</em>th parenthesized submatch string, provided the first argument to <code>replace</code> was a <code>RegExp</code> object. (Correspond to $1, $2, etc. above.)</td>
</tr>
<tr>
<td><code>offset</code></td>
<td>
The offset of the matched substring within the total string being examined. (For example, if the total string was <code>&quot;abcd&quot;</code>, and the matched substring was <code>&quot;bc&quot;</code>, then this argument will be <code>1</code>.)</td>
</tr>
<tr>
<td style="white-space: nowrap;"><code>s</code></td>
<td>The total string being examined.</td>
</tr>
</table>
<p>
Below is a example:
<pre>
var image = new Object();
var regExp = /&lt;img\s*src="([^"]+)"\s*alt="([^"]+)"\s*\/>/;
var string = '&lt;img src="http://www.shanderlam.com/favicon.ico" alt="Shander Lam" />';
string.replace(regExp, replacer);
function replacer(img, src, alt) {
    image = {src: src, alt: alt};
}
</pre>
After <strong>replace</strong> method invoked, the <var>image</var> Object have two property, one is <em>src</em>, value is <em>"http://www.shanderlam.com/favicon.ico"</em>, and another is <em>alt</em>, value is <em>"Shander Lam"</em>. Because the <strong>replace</strong> method doesn't change the value of original string, so use the code above same as first extract <em>src</em> and <em>alt</em> attribute from <var>string</var>, then use them as parameters for invoking <strong>replacer</strong> function.
</p>
