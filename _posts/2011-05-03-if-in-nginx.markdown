---
layout: post
title: if in Nginx
category: System Administrator
tags: [nginx]
date: 2011-05-03 07:07:16.000000000 +08:00
---
In some nginx configuration file, you may find some lines like below:

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

You may think *if* above is a control structure like other programing
language. But not, in nginx, *if* just a directive of *HttpRewriteModule*
module. So you can't find *if* syntax in configuration section of nginx
wiki. It's syntax located in the
[*HttpRewriteModule*](http://wiki.nginx.org/HttpRewriteModule#if) section of
nginx wiki.
