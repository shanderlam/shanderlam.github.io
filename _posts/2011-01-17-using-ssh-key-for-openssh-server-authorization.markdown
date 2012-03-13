---
layout: post
title: !binary |-
  5L2/55SoU1NIIEtleeiupOivgeadpeeZu+W9lU9wZW5TU0ggU2VydmVy
wordpress_id: 281
wordpress_url: !binary |-
  aHR0cDovL2Jsb2cuc2hhbmRlcmxhbS5jb20vP3A9Mjgx
date: 2011-01-17 19:12:55.000000000 +08:00
---
<p>
使用SSH Key认证来登录OpenSSH Server允许无需输入密码登录。SSH Key认证需要两个key，一个称为私匙(Private Key)，另一个称为公匙(Public Key)。首先，需要在客户端生成这两个key，接着再将公匙添加到OpenSSH Server上即可实现使用SSH Key认证来登录。具体步骤如下：
</p>
<h4>1.在服务器端生成Key</h4>
<p>
在客户端的终端上，使用ssh-keygen程序即可完成这个步骤：
<pre>
    ssh-keygen -t dsa
</pre>
上述命令将会在~/.ssh文件夹下生成两个文件，分别为公匙文件~/.ssh/id_dsa.pub和私匙文件~/.ssh/id_dsa。在命令的执行过程中将会弹出输入密码的提示，按回车表示密码为空，这样即可在登录OpenSSH Server无需输入密码。
</p>
<h4>2.将公匙添加在OpenSSH Server上</h4>
<p>
在服务器的~/.ssh/authorized_keys文件中添加id_dsa.pub中的内容，如果~/.ssh/authorized_keys文件不存在，则新建一个。出于安全考虑，最好将~/.ssh/authorized_keys文件的权限设置为600(即只有文件拥有者有读写权限)。
<pre>
    chmod 600 ~/.ssh/authorized_keys
</pre>
</p>
