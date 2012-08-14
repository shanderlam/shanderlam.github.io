---
layout: post
title: HTML BDO Element - Overriding The Bidirectional Algorithm
category: Web Development
tags: [html]
date: 2010-05-19 21:27:58.000000000 +08:00
---
根据[W3C](http://www.w3.org)在[HTML 4.01 Specification](http://www.w3.org/TR/html401/cover.html)中的定义，[bdo](http://www.w3.org/TR/html401/struct/dirlang.html#edef-BDO)标签的作用为Overriding the bidirectional algorithm。这个标签可取代任何当前或者继承的dir属性的设定，通过这个标签所要求的dir属性，可以明确地指定标签里内容的显示方向。例如:

    <bdo dir="rtl">你好，世界！</bdo>

将显示为：

<bdo dir="rtl">你好，世界！</bdo>

对于这个标签，dir属性是必须指定的，其值可以为

LTR
: 从左到右(Left to right)

RTL
: 从右到左(Right to left)
