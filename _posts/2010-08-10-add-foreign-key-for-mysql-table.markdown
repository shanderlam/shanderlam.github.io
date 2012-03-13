---
layout: post
title: !binary |-
  5L2/55SoQUxURVIgVEFCTEXmnaXkuLpNeVNRTOaVsOaNruW6k+S4reeahOih
  qOWinuWKoOWklumUrue0ouW8lQ==
wordpress_id: 226
wordpress_url: !binary |-
  aHR0cDovL2Jsb2cuc2hhbmRlcmxhbS5jb20vP3A9MjI2
date: 2010-08-10 20:15:53.000000000 +08:00
---
<p>
在MySQL数据库如果要为一张表增加外键索引，可以使用以下语法：
<pre>
ALTER TABLE <var>tbl_name</var> 
  ADD FOREIGN KEY [<var>index_name</var>] (<var>index_col_name</var>,...) 
  <var>reference_definition</var>
</pre>
<dl>
<dt>reference_definition</dt>
<dd>
<pre>
REFERENCES <var>tbl_name</var> (<var>index_col_name</var>,...)
  [MATCH FULL | MATCH PARTIAL | MATCH SIMPLE]
  [ON DELETE <var>reference_option</var>]
  [ON UPDATE <var>reference_option</var>]
</pre>
</dd>
<dt>reference_option</dt>
<dd>
<pre>
RESTRICT | CASCADE | SET NULL | NO ACTION
</pre>
</dd>
</dl>
</p>
<ul>
<strong>注：</strong>
<li>
完整的ALTER TABLE语法见<a href="http://dev.mysql.com/doc/refman/5.1/en/alter-table.html">MySQL Reference Manual</a>。
</li>
<li>
除Windows以外的平台上，MySQL使用MyISAM作为默认存储引擎，该引擎目前还不支持外键索引。要了解所有存储引擎特性，请查看<a href="http://dev.mysql.com/doc/refman/5.1/en/storage-engines.html">MySQL Reference Manual</a>。
</li>
<li>
可以使用<a href="http://dev.mysql.com/doc/refman/5.1/en/show-create-table.html">SHOW CREATE TABLE</a>语法来查看外键是否增加成功。
</li>
</ul>
