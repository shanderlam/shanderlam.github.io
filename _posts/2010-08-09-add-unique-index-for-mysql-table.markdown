---
layout: post
title: Add Unique Index For MYSQL Table
category: Database
tags: [mysql]
date: 2010-08-09 15:22:39.000000000 +08:00
---
在MySQL数据库中如果要为一张表的某个字段增加UNIQUE INDEX，可以使用以下语法：

    ALTER TABLE tbl_name ADD UNIQUE (index_col_name,...)

完整的ALTER TABLE语法见[MySQL Reference Manual](http://dev.mysql.com/doc/refman/5.1/en/alter-table.html).