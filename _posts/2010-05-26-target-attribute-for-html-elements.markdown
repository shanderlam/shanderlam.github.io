---
layout: post
title: Target Attribute For HTML Elements
category: Web Development
tags: [html]
date: 2010-05-26 13:11:36.000000000 +08:00
---
在<acronym title="HyperText Markup Language">HTML</acronym>中，有一些标签具有target属性，如*a*标签、*form*标签等。这个属性指定了要在哪个框架(frame)中加载文档，被指定的框架名称(name属性)与target属性值相同。如果不存在这样的框架，浏览器则会新建一个窗口，并把它命名为target的属性值，这样下次再有一个拥有相同target属性值的链接被点击，就会在该窗口中加载文档。target属性有4个保留值，分别如下：

\_blank
: 在新窗口中加载文档。

\_self
: 在当前元素所在的框架中加载文档。

\_parent
: 在当前框架的父框架中加载文档。如果当前框架没有父框架，该值与\_self的效果相同。

\_top
: 在原始的窗口中加载文档。如果当前框架没有父框架，该值与\_self的效果相同。
