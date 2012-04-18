---
layout: post
title: Send Email Via Gmail SMTP Server in Emacs
category: Text Editor
tags: [emacs]
date: 2011-01-12 23:49:51.000000000 +08:00
---
要在Emacs中通过Gmail的smtp服务器来发送电子邮件，首先需要在.emacs文件中将变量<var>send-mail-function</var>的值设置为<var>'smtpmail-send-it</var>,表示使用SMTP library来发送邮件。

    (setq send-mail-function 'smtpmail-send-it)

随后需要分别对变量<var>smtpmail-smtp-server</var>和<var>smtpmail-smtp-service</var>设置相应的值。其中变量<var>smtpmail-smtp-server</var>表示服务器的主机名或者IP地址。而变量<var>smtpmail-smtp-service</var>则表示与服务器交互的端口。对于Gmail的SMTP服务器，设置如下：

    (setq smtpmail-smtp-server "smtp.gmail.com")
    (setq smtpmail-smtp-service 587)

在设置好服务器地址以及端口后，还需要配置相关变量来提供身份认证(Authentication)所需要的信息。由于Gmail的使用了STARTTLS，所以需要安装额外的工具，可以是[GnuTLS](http://www.gnu.org/software/gnutls/)或[starttls](ftp://ftp.opaopa.org/pub/elisp/)的其中一种。这里有一篇文章是关于[在Mac OS X 下安装GnuTLS](http://blog.shanderlam.com/archives/266)的介绍。安装完上述工具的其中一种之后即可开始进行变量的设置，需要设置的变量分别为<var>smtpmail-auth-credentials</var>和<var>smtpmail-starttls-credentials</var>。其中变量<var>smtpmail-auth-credentials</var>表示使用SASL认证，它包含了由主机名、端口、用户名以及密码所组成的数组。如果将用户名和密码设置为nil则表示在进行认证时通过交互方式由用户输入用户名及密码。这个变量可如下设置：

    (setq smtpmail-auth-credentials
        '(("smtp.gmail.com" 587 "username@gmail.com" "PASSWORD")))

而变量<var>smtpmail-starttls-credentials</var>则表示使用STARTTLS连接服务器，它包含了由主机名、端口、客户端key文件名以及客户端证书文件名所组成的数组。如果不使用客户端验证，后面两个数组元素的值可以设置成*nil*。这个变量可以如下设置：

    (setq smtpmail-starttls-credentials
        '(("smtp.gmail.com" 587 nil nil)))

通过上述的设置，即可通过Gmail的SMTP服务器来发送电子邮件了。
