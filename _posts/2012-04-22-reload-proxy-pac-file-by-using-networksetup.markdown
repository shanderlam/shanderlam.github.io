---
layout: post
title: Reload Proxy.pac File By Using networksetup
category: System Administrator
tags: [osx]
date: 2012-04-22 23:22:00.000000000 +08:00
---
In OS X, you can set a proxy configuration file for automatic proxy.  Usually
this file named proxy.pac.  If you want to edit this file, it may not take
effect immediately unless you reconfig the 'Automatic Proxy Configuration'.  To
reload this file quickly, you can use *networksetup* command line tool.  In the
terminal, type command below:

    networksetup -setautoproxyurl Wi-Fi http://www.example.com/proxy.pac

Then your auto proxy configuration is taked effect for Wi-Fi network service.
For convenient, you can save this command in a script file, every time you just
run the script for reload your proxy configuration file.
