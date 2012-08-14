---
layout: post
title: Add Foreign Key for MYSQL Table
category: Database
tags: [mysql]
date: 2010-08-10 20:15:53.000000000 +08:00
---

在MySQL数据库如果要为一张表增加外键索引，可以使用以下语法：

    ALTER TABLE tbl_name
        ADD FOREIGN KEY [index_name] (index_col_name,...)
        reference_definition

*reference_definition*

    REFERENCES <var>tbl_name</var> (<var>index_col_name</var>,...)
      [MATCH FULL | MATCH PARTIAL | MATCH SIMPLE]
      [ON DELETE <var>reference_option</var>]
      [ON UPDATE <var>reference_option</var>]

*reference_option*

    RESTRICT | CASCADE | SET NULL | NO ACTION

**注:**

* 完整的ALTER TABLE语法见[MySQL Reference Manual](http://dev.mysql.com/doc/refman/5.1/en/alter-table.html)。
* 除Windows以外的平台上，MySQL使用MyISAM作为默认存储引擎，该引擎目前还不支持外键索引。要了解所有存储引擎特性，请查看[MySQL Reference Manual](http://dev.mysql.com/doc/refman/5.1/en/storage-engines.html)。
* 可以使用[SHOW CREATE TABLE](http://dev.mysql.com/doc/refman/5.1/en/show-create-table.html)语法来查看外键是否增加成功。
