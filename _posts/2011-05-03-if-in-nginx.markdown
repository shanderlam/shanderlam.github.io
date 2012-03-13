---
layout: post
title: !binary |-
  ImlmIiBpbiBuZ2lueA==
wordpress_id: 480
wordpress_url: !binary |-
  aHR0cDovL2Jsb2cuc2hhbmRlcmxhbS5jb20vP3A9NDgw
date: 2011-05-03 07:07:16.000000000 +08:00
---
<p>
In some nginx configuration file, you may find some lines like below:
<pre>
if ($http_user_agent ~ MSIE) {
  rewrite  ^(.*)$  /msie/$1  break;
}
 
if ($http_cookie ~* "id=([^;] +)(?:;|$)" ) {
  set  $id  $1;
}
 
if ($request_method = POST ) {
  return 405;
}
 
if (!-f $request_filename) {
  break;
  proxy_pass  http://127.0.0.1;
}
 
if ($slow) {
  limit_rate  10k;
}
 
if ($invalid_referer) {
  return   403;
}
 
if ($args ~ post=140){
  rewrite ^ http://example.com/ permanent;
}
</pre>
</p>
<p>
You may think "if" above is a control structure like other programing language. But not, in nginx, "if" just a directive of <em> HttpRewriteModule</em> module. So you can't find "if" syntax in configuration section of nginx wiki. It's syntax located in the <a href="http://wiki.nginx.org/HttpRewriteModule#if"><em> HttpRewriteModule</em></a> section of nginx wiki.
</p>
