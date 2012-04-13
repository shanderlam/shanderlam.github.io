---
layout: post
title: Restore Mysql Database From SQL Dump File
category: System Administrator
tags: [mysql]
date: 2011-02-07 16:12:20.000000000 +08:00
---
You can use the shell command below to restroe a MySQL database from a sql dump file.

    mysql -u #username# -p #database# < #dump_file#

Of course you need to replace *#username#* to your database username, *#database#* to your target database and rename *#dump_file#* to your dump file name.
